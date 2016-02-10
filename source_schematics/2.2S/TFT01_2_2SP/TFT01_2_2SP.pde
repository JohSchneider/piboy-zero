/*==========================================================================
The LCD connection is the same as Nokia LCD5110 and  is a“8 Bit Pant Demo“

Just for ElecFreaks TFT01-2.2SP, which use SPI serial port and 240x320 pixel.
The driver is ILI9341.
 
by Elecfreaks
==========================================================================*/ 
#include "pins_arduino.h"

#define LCD_WR    9   //SCL
#define LCD_RS   10   //SDA
#define LCD_DC   11   //A0
#define LCD_REST 12   //RESET
#define LCD_CS   13   //CSE    

volatile uint8_t *P_SCK, *P_MOSI, *P_DC, *P_RST, *P_CS;
volatile uint8_t B_SCK, B_MOSI, B_DC, B_RST, B_CS;
  
void LCD_Writ_Bus(char data)
{
  *P_CS &= ~B_CS;
  for (unsigned char c=0; c<8; c++)
  {
	if (data & 0x80)
		*P_MOSI |= B_MOSI;
	else
		*P_MOSI &= ~B_MOSI;
	data = data<<1;
	*P_SCK &= ~B_SCK;
	asm ("nop");
	*P_SCK |= B_SCK;
  }
  *P_CS |= B_CS;
}
 
void LCD_Write_COM(char VL)  
{   
  digitalWrite(LCD_DC,LOW);
  LCD_Writ_Bus(VL);
}
 
void LCD_Write_DATA(char VL)    
{
  digitalWrite(LCD_DC,HIGH);
  LCD_Writ_Bus(VL);
}
 
void Address_set(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y2)
{
   LCD_Write_COM(0x2a);
   LCD_Write_DATA(x1>>8);
   LCD_Write_DATA(x1);
   LCD_Write_DATA(x2>>8);
   LCD_Write_DATA(x2);
  
   LCD_Write_COM(0x2b);
   LCD_Write_DATA(y1>>8);
   LCD_Write_DATA(y1);
   LCD_Write_DATA(y2>>8);
   LCD_Write_DATA(y2);

   LCD_Write_COM(0x2C);         				 
}
 
void LCD_Init(void)
{
        P_SCK	= portOutputRegister(digitalPinToPort(LCD_WR));
        B_SCK	= digitalPinToBitMask(LCD_WR);
	P_MOSI	= portOutputRegister(digitalPinToPort(LCD_RS));
	B_MOSI	= digitalPinToBitMask(LCD_RS);
	P_DC	= portOutputRegister(digitalPinToPort(LCD_DC));
	B_DC	= digitalPinToBitMask(LCD_DC);
	P_RST	= portOutputRegister(digitalPinToPort(LCD_REST));
	B_RST	= digitalPinToBitMask(LCD_REST);
	P_CS	= portOutputRegister(digitalPinToPort(LCD_CS));
	B_CS	= digitalPinToBitMask(LCD_CS);
 
        *P_RST &= ~B_RST;
	delay(10);
	*P_RST |= B_RST;
  
        LCD_Write_COM(0xCB);  
        LCD_Write_DATA(0x39); 
        LCD_Write_DATA(0x2C); 
        LCD_Write_DATA(0x00); 
        LCD_Write_DATA(0x34); 
        LCD_Write_DATA(0x02); 

        LCD_Write_COM(0xCF);  
        LCD_Write_DATA(0x00); 
        LCD_Write_DATA(0XC1); 
        LCD_Write_DATA(0X30); 

        LCD_Write_COM(0xE8);  
        LCD_Write_DATA(0x85); 
        LCD_Write_DATA(0x00); 
        LCD_Write_DATA(0x78); 

        LCD_Write_COM(0xEA);  
        LCD_Write_DATA(0x00); 
        LCD_Write_DATA(0x00); 
 
        LCD_Write_COM(0xED);  
        LCD_Write_DATA(0x64); 
        LCD_Write_DATA(0x03); 
        LCD_Write_DATA(0X12); 
        LCD_Write_DATA(0X81); 

        LCD_Write_COM(0xF7);  
        LCD_Write_DATA(0x20); 
  
        LCD_Write_COM(0xC0);    //Power control 
        LCD_Write_DATA(0x23);   //VRH[5:0] 
 
        LCD_Write_COM(0xC1);    //Power control 
        LCD_Write_DATA(0x10);   //SAP[2:0];BT[3:0] 

        LCD_Write_COM(0xC5);    //VCM control 
        LCD_Write_DATA(0x3e);   //Contrast
        LCD_Write_DATA(0x28); 
 
        LCD_Write_COM(0xC7);    //VCM control2 
        LCD_Write_DATA(0x86);   //--
 
        LCD_Write_COM(0x36);    // Memory Access Control 
        LCD_Write_DATA(0x48);   //C8	   //48 68竖屏//28 E8 横屏

        LCD_Write_COM(0x3A);    
        LCD_Write_DATA(0x55); 

        LCD_Write_COM(0xB1);    
        LCD_Write_DATA(0x00);  
        LCD_Write_DATA(0x18); 
 
        LCD_Write_COM(0xB6);    // Display Function Control 
        LCD_Write_DATA(0x08); 
        LCD_Write_DATA(0x82);
        LCD_Write_DATA(0x27);  
/* 
        LCD_Write_COM(0xF2);    // 3Gamma Function Disable 
        LCD_Write_DATA(0x00); 
 
        LCD_Write_COM(0x26);    //Gamma curve selected 
        LCD_Write_DATA(0x01); 

        LCD_Write_COM(0xE0);    //Set Gamma 
        LCD_Write_DATA(0x0F); 
        LCD_Write_DATA(0x31); 
        LCD_Write_DATA(0x2B); 
        LCD_Write_DATA(0x0C); 
        LCD_Write_DATA(0x0E); 
        LCD_Write_DATA(0x08); 
        LCD_Write_DATA(0x4E); 
        LCD_Write_DATA(0xF1); 
        LCD_Write_DATA(0x37); 
        LCD_Write_DATA(0x07); 
        LCD_Write_DATA(0x10); 
        LCD_Write_DATA(0x03); 
        LCD_Write_DATA(0x0E); 
        LCD_Write_DATA(0x09); 
        LCD_Write_DATA(0x00); 

        LCD_Write_COM(0XE1);    //Set Gamma 
        LCD_Write_DATA(0x00); 
        LCD_Write_DATA(0x0E); 
        LCD_Write_DATA(0x14); 
        LCD_Write_DATA(0x03); 
        LCD_Write_DATA(0x11); 
        LCD_Write_DATA(0x07); 
        LCD_Write_DATA(0x31); 
        LCD_Write_DATA(0xC1); 
        LCD_Write_DATA(0x48); 
        LCD_Write_DATA(0x08); 
        LCD_Write_DATA(0x0F); 
        LCD_Write_DATA(0x0C); 
        LCD_Write_DATA(0x31); 
        LCD_Write_DATA(0x36); 
        LCD_Write_DATA(0x0F); 
*/
        LCD_Write_COM(0x11);    //Exit Sleep 
        delay(120); 
				
        LCD_Write_COM(0x29);    //Display on 
        LCD_Write_COM(0x2c);   
}
 
void Pant(char VL)
{
  int i,j;
  Address_set(0,0,240,320);
  for(i=0;i<320;i++)
  {
    for (j=0;j<480;j++)
    {
      LCD_Write_DATA(VL);
    }
  }
}
 
void setup()
{
  unsigned char p;
  for(p=8;p<14;p++)
    pinMode(p,OUTPUT);
  LCD_Init();  
}
 
void loop()
{  
  Pant(0xFF);   
  Pant(0xF0);   
  Pant(0xE0);  
  Pant(0x05);  
  Pant(0x1F);    
  Pant(0x00);   
}

