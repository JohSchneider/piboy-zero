#!/bin/bash
DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

set -ex
rsync -Ppav emulationstation/ /home/pi/.emulationstation/
