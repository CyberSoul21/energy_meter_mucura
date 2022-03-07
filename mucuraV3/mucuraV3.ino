/**************************************************************************//**
 * @file mucuraV3.ino
 *
 * 
 * @author: Wilson Javier Almario Rodriguez.
 * @date: 05/02/2021
 * @project: Medidor de energia para la isla Mucura - Colombia
 *
 *
 *****************************************************************************/
/******************************************************************************
 * Copyright (C) 2021 by Laboratorio de ensayos electricos industriales - Universidad Nacional de Colombia
 *
 *****************************************************************************/



#include <Wire.h> 
#include <LiquidCrystal_I2C.h>
#include "energy_sensor.h"
#include "date.h"
#include "memory_sd.h"

//#include <HardwareSerial.h> //For Esp32


//Crear el objeto lcd  dirección  0x3F y 16 columnas x 2 filas
LiquidCrystal_I2C lcd(0x3F,16,2);  //


const int buttons = A0;
int WhatButton = 0;        // value read from the pot


//char acc_saved = "0";

float acc = 0.0, ener = 0.0, acc_day = 0.0, acc_day_saved = 0.0;

int timeSave_acc = 0, time_for_save = 1200000; //each 20 min

String date_saved; 
String current_date;

void setup() {
  //Wire.begin(); //For ESP32
  Serial.begin(115200);

  initSensor();
  initRTC();
  //set_date();
  lcd.init();
  lcd.backlight();
  lcd.print("   LABE-UNAL   ");
  delay(1000);
  lcd.clear();


  Serial.print("Initializing SD card...");

  if (!SD.begin(53)) {
    Serial.println("initialization failed!");
    lcd.clear();
    while (1){
        
      lcd.setCursor(0, 0);
      lcd.print("Error SD");
      };
  }
  Serial.println("initialization done.");

  date_saved = what_day().substring(0,8);
  current_date = get_date().substring(0,8);

  if(!day_change(date_saved,current_date))
  {
    acc_day_saved = read_acc_day();
    acc_day = acc_day_saved;
  }
  
  acc = get_energy();

  Serial.print("date: ");
  Serial.println(get_date());
  

}



char *optionMenu[] = {"Fecha", "Voltaje", "Factor Potencia",
                     "Potencia", "Reiniciar acumu", "Salir"
                    };
int select = 0;
int aux_sel = 0;
int count_time =0;

void loop() {

  WhatButton = analogRead(buttons);
  if(WhatButton >= 340 && WhatButton <= 360) //Menu
  {

    lcd.clear();  
    lcd.setCursor(0, 0);
    lcd.print(optionMenu[select]);
    lcd.setCursor(0, 1);
    lcd.print(optionMenu[select+1]);
    lcd.setCursor(15, aux_sel);
    lcd.print("*");
    
    while(count_time < 30)
    { 
      WhatButton = analogRead(buttons);
      if(WhatButton >= 80 && WhatButton <= 90) //Down
      {
        lcd.setCursor(15, aux_sel);
        lcd.print(" ");
        aux_sel++;
        if(aux_sel > 1)
        {
          aux_sel = 0;
          select++;
          if(select > 4){select = 0;}
        }
        count_time = 0;
        lcd.clear();  
      }
      if(WhatButton >= 25 && WhatButton <= 35) //UP
      {
        lcd.setCursor(15, aux_sel);
        lcd.print(" ");
        aux_sel--;
        if(aux_sel < 0)
        {
          aux_sel = 1;
          select--;
          if(select < 0){select = 5;}
        }
        count_time = 0;
        lcd.clear();  
      }
      if(WhatButton >= 160 && WhatButton <= 170) //Enter
      {
        lcd.clear();
        count_time = 0;
        while(count_time < 30)
        {
          lcd.setCursor(0,0);
          if(aux_sel==0)
          {
            lcd.print(select);
            switch (select) {
              case 0:
                lcd.clear();  
                lcd.setCursor(0, 0);
                lcd.print("Fecha: ");
                lcd.setCursor(0, 1);
                lcd.print(get_date());
                lcd.setCursor(10, 1);
                lcd.print(get_hour());  
                break;
              case 1:
                lcd.clear();  
                lcd.setCursor(0, 0);
                lcd.print("Voltaje: ");
                lcd.setCursor(0, 1);
                lcd.print(get_voltage());
                lcd.print(" V");
                break;
              case 2:
                lcd.clear();  
                lcd.setCursor(0, 0);
                lcd.print("FP: ");
                lcd.setCursor(0, 1);
                lcd.print(get_pf());
                lcd.print(" ");
                break;
              case 3:
                lcd.clear();  
                lcd.setCursor(0, 0);
                lcd.print("Potencia: ");
                lcd.setCursor(0, 1);
                lcd.print(get_power());
                lcd.print(" ");
                break;
              case 4:
                count_time=0;
                WhatButton = 255;
                while(count_time < 30)
                {
                  lcd.clear();  
                  lcd.setCursor(0, 0);
                  lcd.print("Reiniciar?");
                  lcd.setCursor(0, 1);
                  lcd.print("Si <--     -->NO");
                  delay(50);
                  WhatButton = analogRead(buttons);
                  if(WhatButton > 160 && WhatButton < 170) //NO
                  {
                    //goto main;
                    count_time=40;
                    WhatButton = 255;
                    break;
                  }
                  if(WhatButton == 0) //SI
                  {
                    lcd.clear();  
                    lcd.setCursor(0, 0);
                    lcd.print("Reiniciando...");
                    resetSensor();
                    delay(1000);
                    count_time=40;
                    WhatButton = 255;
                  }
                  count_time++;          
                  delay(200);
                }
                //count_time=0;
                //goto main;
                break;
              case 5:
                count_time = 0;
                goto main;
                break;                                   
              default:
                // statements
                break;
            }
          }
          
          if(aux_sel==1)
          {
            lcd.print(select+1);
            switch (select+1) {
              case 0:
                lcd.clear();  
                lcd.setCursor(0, 0);
                lcd.print("Fecha: ");
                lcd.setCursor(0, 1);
                lcd.print(get_date());
                lcd.setCursor(11, 1);
                lcd.print(get_hour());                
                break;
              case 1:
                lcd.clear();  
                lcd.setCursor(0, 0);
                lcd.print("Voltaje: ");
                lcd.setCursor(0, 1);
                lcd.print(get_voltage());
                lcd.print(" V");
                break;
              case 2:
                lcd.clear();  
                lcd.setCursor(0, 0);
                lcd.print("FP: ");
                lcd.setCursor(0, 1);
                lcd.print(get_pf());
                lcd.print(" ");
                break;
              case 3:
                lcd.clear();  
                lcd.setCursor(0, 0);
                lcd.print("Potencia: ");
                lcd.setCursor(0, 1);
                lcd.print(get_power());
                lcd.print(" W");
                lcd.print(" ");
                break;
              case 4:
                count_time=0;
                WhatButton = 255;
                while(count_time < 30)
                {
                  lcd.clear();  
                  lcd.setCursor(0, 0);
                  lcd.print("Reiniciar?");
                  lcd.setCursor(0, 1);
                  lcd.print("Si <--     -->NO");
                  delay(50);
                  WhatButton = analogRead(buttons);
                  if(WhatButton > 160 && WhatButton < 170) //NO
                  {
                    //goto main;
                    count_time=40;
                    WhatButton = 255;
                    break;
                  }
                  if(WhatButton == 0) //SI
                  {
                    lcd.clear();  
                    lcd.setCursor(0, 0);
                    lcd.print("Reiniciando...");
                    resetSensor();
                    write_acc_day(0.0);
                    delay(1000);
                    count_time=40;
                    WhatButton = 255;
                  }
                  count_time++;          
                  delay(200);
                }
                //count_time=0;
                //goto main;
                break;
              case 5:
                count_time = 0;
                goto main;
                break;                                   
              default:
                // statements
                break;
            }
          }
          
          count_time++;          
          delay(200);
        }
        count_time = 0;
        lcd.clear();
      }      
            
      lcd.setCursor(0, 0);
      lcd.print(optionMenu[select]);
      lcd.setCursor(0, 1);
      lcd.print(optionMenu[select+1]);
      lcd.setCursor(15, aux_sel);
      lcd.print("*");    
      count_time++;
      delay(200);
    }
    select = 0;
    count_time = 0;
    aux_sel = 0;
  }



  main:
  
  select = 0;
  count_time = 0;
  aux_sel = 0;  
  
  lcd.clear();  
  lcd.setCursor(0, 0);
  lcd.print("Consumo accum: ");
  lcd.setCursor(0, 1);
  lcd.print(get_energy());
  lcd.print(" Kwh");
  delay(500);



  
  if(get_energy() != acc) //save when change enrgy
  {
    acc_day += get_energy() - acc;// + acc_day_saved;
    write_acc_day(acc_day);
    acc = get_energy();
    write_accumulated(get_energy());
    Serial.print("Entro if: ");
    Serial.print(" acc: ");
    Serial.print(acc);
    Serial.print(" get_energy(): ");
    Serial.print(get_energy());
    Serial.print(" acc_day ");
    Serial.println(acc_day);
  }

  current_date = get_date().substring(0,8);
  day_change(date_saved,current_date); //save when day change!
  
  if(millis() - timeSave_acc >= time_for_save)
  {
    write_accumulated(get_energy());
  }
  

}

bool day_change(String date_s,String date_c)
{
  Serial.println("day_change?");
  if(date_s != date_c) //save when day change!
  {
    Serial.print("Current: ");
    Serial.println(date_c);
    Serial.print("date saved: ");
    Serial.println(date_s);    
    write_history_acc_day(date_saved,String(acc_day));
    date_saved = date_c;
    write_day(date_saved);
    acc_day = 0.0;
    write_acc_day(0.0);

    return true;
  }
  else{ return false;}
}
