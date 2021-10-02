#!/bin/bash
#
# test program for Digilent's PMOD8LD module connected to PMOD4
# on a pmod2rpi hat board. -> https://github.com/fm4dd/pmod2rpi
#
# This script uses the 'gpiod' pin control program and library.
# install with 'sudo apt install gpiod'
#
# PMOD4 RPi pin assignment:
# -----------------------------------------
# pmod4-1 = gpio22 = connector pin 15 = LD0
# pmod4-2 = gpio27 = connector pin 13 = LD1
# pmod4-3 = gpio3  = connector pin  5 = LD2
# pmod4-4 = gpio2  = connector pin  3 = LD3
# -----------------------------------------

pins=(22 27 3 2)

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
