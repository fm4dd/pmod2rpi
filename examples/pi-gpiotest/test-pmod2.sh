#!/bin/bash
#
# test program for Digilent's PMOD8LD module connected to PMOD2
# on a pmod2rpi hat board. -> https://github.com/fm4dd/pmod2rpi
#
# This script uses the 'gpiod' pin control program and library.
# install with 'sudo apt install gpiod'
#
# PMOD2 RPi pin assignment:
# -----------------------------------------
# pmod2-1 = gpio7  = connector pin 26 = LD0
# pmod2-2 = gpio10 = connector pin 19 = LD1
# pmod2-3 = gpio9  = connector pin 21 = LD2
# pmod2-4 = gpio11 = connector pin 23 = LD3
# pmod2-5 = gpio20 = connector pin 38 = LD4
# pmod2-6 = gpio13 = connector pin 33 = LD5
# pmod2-7 = gpio23 = connector pin 16 = LD6
# pmod2-8 = gpio24 = connector pin 18 = LD7
# -----------------------------------------
# Note: pmod2-2..4 mirror pmod1 to provide 2x SPI device ports

pins=(7 10 9 11 20 13 23 24)

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
