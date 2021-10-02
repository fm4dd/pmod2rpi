#!/bin/bash
#
# test program for Digilent's PMOD8LD module connected to PMOD3
# on a pmod2rpi hat board. -> https://github.com/fm4dd/pmod2rpi
#
# This script uses the 'gpiod' pin control program and library.
# install with 'sudo apt install gpiod'
#
# PMOD3 RPi pin assignment:
# -----------------------------------------
# pmod3-1 = gpio16 = connector pin 36 = LD0
# pmod3-2 = gpio14 = connector pin  8 = LD1
# pmod3-3 = gpio15 = connector pin 10 = LD2
# pmod3-4 = gpio17 = connector pin 11 = LD3
# pmod3-5 = gpio4  = connector pin  7 = LD4
# pmod3-6 = gpio12 = connector pin 32 = LD5
# pmod3-7 = gpio5  = connector pin 29 = LD6
# pmod3-8 = gpio6  = connector pin 31 = LD7
# -----------------------------------------

pins=(16 14 15 17 4 12 5 6)

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
