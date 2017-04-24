#!/usr/bin/env python
import time
import random
import sys

# fake ADC reading function
#  in real-life this reads from an add-on ADC board on a 
#  raspberry pi that measures the voltage across a resister
#  on a separate piece of hardware.
def read_ADC():
  time.sleep(0.01)
  # crazy function that generates something similar to the real-life signal I was watching
  t = time.time() % 4.0
  r = random.choice([0.0]*8 + [2.0]*8 + [100.0]*4 + [300.0]*4)
  v = (1300.0 if t < 0.4 else 14.0) + r 
  return v*shunt_r / (10**6) # back calculating to get the value I know I want


shunt_r = 54.7 #shunt resistor value in ohms
  
while True:
  shunt_v = read_ADC()
  shunt_i = shunt_v / shunt_r
  uA_i = (shunt_i * 10**6)
  # print out value, and a proportional visual representation 
  print("%7.2fuA: " % (uA_i) + ("-" * int(uA_i / 20)))
  sys.stdout.flush()
