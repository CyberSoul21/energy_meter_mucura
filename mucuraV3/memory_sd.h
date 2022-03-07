/**************************************************************************//**
 * @file memory_sd.h
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


#ifndef memory_sd_h
#define memory_sd_h


#include <SD.h>



float read_accumulated()
{
  File acc;
  char chr;
  float value;
  String str;
  acc = SD.open("accum.txt",FILE_READ);
  while(acc.peek() != -1)
  {
    chr = acc.read();
    delay(100);
    str += chr;
    
  }
  acc.close();
  //Serial.println(str);
  value = str.toFloat();
  return value;
}

void write_accumulated(float value)
{
  File acc;
  //Serial.println(String(value));
  SD.remove("accum.txt");
  delay(100);
  acc = SD.open("accum.txt",FILE_WRITE);
  acc.print(value);
  delay(100);
    // close the file:
  acc.close();
}

void write_acc_day(float value)
{
  File acc;
  //Serial.println(String(value));
  SD.remove("day2.txt");
  delay(100);
  acc = SD.open("day2.txt",FILE_WRITE);
  acc.println(value);
  delay(100);
    // close the file:
  acc.close();
}

float read_acc_day()
{
  Serial.println("read_acc_day()");
  File acc;
  char chr;
  float value;
  String str;
  acc = SD.open("day2.txt",FILE_READ);
  while(acc.peek() != -1)
  {
    chr = acc.read();
    delay(100);
    str += chr;
    Serial.println("loop");
  }
  acc.close();
  Serial.println("Leido de day: "+str);
  value = str.toFloat();
  delay(100);
  return value;
}

String what_day()
{
  File acc;
  char chr;
  String value;
  String str;
  acc = SD.open("whatDay.txt",FILE_READ);
  //Serial.print("Peek: ");
  //Serial.println(acc.peek());
  while(acc.peek() != -1)
  {
    chr = acc.read();
    delay(100);
    str += chr;
    
  }
  acc.close();
  delay(100);
//  Serial.println(str);
//  value = str.toFloat();
  return str;
}

void write_day(String value)
{
  Serial.println("Estoy en write_day(): " + value);
  File acc;
  //Serial.println(String(value));
  SD.remove("whatDay.txt");
  delay(100);
  acc = SD.open("whatDay.txt",FILE_WRITE);
  acc.println(value);
  delay(100);
    // close the file:
  acc.close();  
}


void write_history_acc_day(String dateStr, String ener)
{
  String value = dateStr + "," + ener;
  File acc;
  acc = SD.open("history.txt", FILE_WRITE);
  acc.println(value);
  delay(100);
  // close the file:
  acc.close();   
}



















void test()
{
//  acc = SD.open("accum.txt");
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  delay(1000);
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  delay(1000);
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  delay(1000);
//  int acc_saved1 = acc.read();
//  Serial.println(acc_saved1);
//  delay(1000);
//  int q = acc.read();
//  Serial.println(q);  
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  if(acc.peek() == -1){Serial.println("Es un salto");}
//  delay(1000); 
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  delay(1000); 
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  delay(1000); 
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  delay(1000);      
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  delay(1000);
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  delay(1000); 
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  delay(1000); 
//  acc_saved = acc.read();
//  Serial.println(acc_saved);
//  delay(1000);   
}


#endif
