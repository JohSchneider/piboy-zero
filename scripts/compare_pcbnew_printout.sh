#!/bin/bash
#set -ex

OLD="$1"
NEW="$2"

echo "OLD=$OLD"
echo "NEW=$NEW"

echo "converting both pdfs to series of pngs... (might take a while)"
## rotate upright, crop away pcbnews frame and remove empty space
convert -density 800 "$NEW" -rotate 90 -crop 8560x4800+400+400 -trim "new_%02d.png"
convert -density 800 "$OLD" -rotate 90 -crop 8560x4800+400+400 -trim "old_%02d.png"

for A in new_*.png; do
    B="old${A#new}"
    if [ -f "$B" ]; then
	echo "comparing $A with $B..."
	convert -colorspace gray "$A" gray_A.png
	convert -colorspace gray "$B" gray_B.png
	composite -stereo 0 gray_A.png gray_B.png "diff${A#new}"
	rm gray_A.png gray_B.png
    fi
done
exit 0
