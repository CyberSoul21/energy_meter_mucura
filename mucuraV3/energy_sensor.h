/**************************************************************************//**
 * @file energy_sensor.h
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




#ifndef Energy_Sensor_h
#define Energy_Sensor_h

//#include <HardwareSerial.h> //For Esp32
//
//HardwareSerial MySerial(1);


//#include <SoftwareSerial.h>
#include <PZEM004Tv30.h>
//PZEM004Tv30 pzem(&MySerial);   //ESP32
PZEM004Tv30 pzem(&Serial3); //Arduino Mega


void initSensor()
{
  Serial.print("Reset Energy");
  //pzem.resetEnergy();
  Serial.print("Set address to 0x42");
  //pzem.setAddress(0x42);  
 // pzem.setAddress(ip); 
 delay(100);
  
}


void resetSensor()
{
  Serial.print("Reset Energy");
  pzem.resetEnergy();
  Serial.print("Set address to 0x42");
  delay(100);
  
}

float get_current()
{
//  float cur = pzem.current();
//  Serial.print("Current: ");
//  Serial.print(cur);
//  Serial.println("A");  
  return pzem.current();
}

float get_voltage()
{
//  float volt = pzem.voltage();
//  Serial.print("Voltage: ");
//  Serial.print(volt);
//  Serial.println("V");
  return pzem.voltage();   
}


float get_power()
{
//  powe = pzem.power();
//  lcd.print("Power: ");
//  lcd.print(powe);
//  lcd.print(" W");  
  return pzem.power();
}


float get_energy()
{
//  float ener = pzem.energy();
//  Serial.print("Energy: ");
//  Serial.print(ener,3);
//  Serial.println("kWh"); 
  return pzem.energy(); 
}

float get_pf()
{
  //float pf = pzem.pf();
  //Serial.print("PF: ");
  //Serial.println(pf);
  return pzem.pf();
}


float get_frequency()
{
//  float freq = pzem.frequency();
//  Serial.print("Frequency: ");
//  Serial.print(freq);
//  Serial.println("Hz");  
  return pzem.frequency();
  
}




#endif
