#!/bin/bash
#
# test program for Digilent's PMOD8LD module connected to PMOD1
# on a pmod2rpi hat board. -> https://github.com/fm4dd/pmod2rpi
#
# This script uses the 'gpiod' pin control program and library.
# install with 'sudo apt install gpiod'
#
# PMOD1 RPi pin assignment:
# -----------------------------------------
# pmod1-1 = gpio8  = connector pin 24 = LD0
# pmod1-2 = gpio10 = connector pin 19 = LD1
# pmod1-3 = gpio9  = connector pin 21 = LD2
# pmod1-4 = gpio11 = connector pin 23 = LD3
# pmod1-5 = gpio19 = connector pin 35 = LD4
# pmod1-6 = gpio21 = connector pin 40 = LD5
# pmod1-7 = gpio26 = connector pin 37 = LD6
# pmod1-8 = gpio18 = connector pin 12 = LD7
# -----------------------------------------
# Note: pmod2-2..4 mirror pmod1 to provide 2x SPI device ports

pins=(8 10 9 11 19 21 26 18)

cycle=0.1 # delay before next LED
declare -i turns=5   # how many times to repeat
declare -i i=0       # counter

while [ true ];  do

   # turn on LD0..7 one by one
   for pin in "${pins[@]}"; do
      gpioset gpiochip0 $pin=1
      sleep $cycle
   done

   # turn off LD0..7 one by one
   for pin in "${pins[@]}"; do
      gpioset gpiochip0 $pin=0
      sleep $cycle
   done

   let i++
   echo turn $i/$turns
   if [ "$i" -ge "$turns" ]; then break; fi
done
echo done
