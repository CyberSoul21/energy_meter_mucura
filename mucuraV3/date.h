/**************************************************************************//**
 * @file date.h
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



#ifndef DATE_h
#define DATE_h

#include <DS3231.h>

DS3231  rtc(SDA, SCL);

typedef struct hourStruct{
  long int hr;
  long int mn;
  long int sg;
  long int di;
};


typedef struct dateStruct{
  long int dy;
  long int mth;
  long int yr;
};


hourStruct hourRTC;

dateStruct dateRTC;

void initRTC()
{
  rtc.begin();
}


String get_hour(){
   String clock_time = rtc.getTimeStr();
   delay(50);
   //String fecha = rtc.getDateStr();
   hourRTC.hr = clock_time.substring(0,2).toInt();
   hourRTC.mn = clock_time.substring(3,5).toInt();
   hourRTC.sg = clock_time.substring(6,8).toInt();
   String without_sg = clock_time.substring(0,5);
   return without_sg;
   //return clock_time;
}

String get_date()
{
  String date = rtc.getDateStr();
  String dy = date.substring(0,2);
  String mth = date.substring(3,5);
  String yr = date.substring(6,8);

  dateRTC.dy = date.substring(0,2).toInt();
  dateRTC.mth = date.substring(3,5).toInt();
  dateRTC.yr = date.substring(6,8).toInt();    

  //Serial.println(dy + "/" + mth + "/" + yr);
  return dy + "/" + mth + "/" + yr;
}

String get_day()
{
  String day = rtc.getDOWStr();
  
  if(day=="Monday"){
      day = "Lunes";
      hourRTC.di = 1;
    }else if(day=="Tuesday"){
      day = "Martes";
      hourRTC.di = 2;
    }else if(day=="Wednesday"){
      day = "Miercoles";
      hourRTC.di = 3;
    }else if(day=="Thursday"){
      day = "Jueves";
      hourRTC.di = 4;
    }else if(day=="Friday"){
      day = "Viernes";
      hourRTC.di = 5;
    }else if(day=="Saturday"){
      day = "Sabado";
      hourRTC.di = 6;
    }else if(day=="Sunday"){
      day = "Domingo";
      hourRTC.di = 7;
    }
    return day; 
}


void set_date()
{
  rtc.setDOW(FRIDAY);     // Set Day-of-Week to SUNDAY
  rtc.setTime(13, 42, 0);     // Set the time to 12:00:00 (24hr format)
  rtc.setDate(05, 02, 2021);   // Set the date to January 1st, 2014  
  //rtc.setDate(day, month, year);   // Set the date to January 1st, 2014  
}

String format(int valor){
  if(valor<=9){
    return "0"+String(valor); 
  }else{
    return String(valor);  
  }
  
}


#endif
