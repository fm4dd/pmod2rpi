/* ------------------------------------------------------------ *
 * file:        gpio-test.c                                     *
 * purpose:     digital pin control program for PMOD2RPI board  *
 *              sets PMOD1-connected RPi GPIO pins as output,   *
 *              and blinks 20 times on pin 0 and 1. This prog   *
 *              is best used with an Digilent's PMOD8LD module. *
 *                                                              *
 * requires:    GPIOD library                                   *
 *              e.g. sudo apt install libi2c-dev libgpiod-dev   *
 *                                                              *
 * example:     ./gpio-test                                     *
 *                                                              *
 * author:      09/09/2021 Frank4DD                             *
 * ------------------------------------------------------------ */
#include <gpiod.h>
#include <stdio.h>
#include <unistd.h>

#define PMOD     "pmod1"
#define CHIPNAME "gpiochip0"

// Global variables
struct gpiod_chip *chip;

void release_line(struct gpiod_line *line) {
   int ret = gpiod_line_set_value(line, 0);
   gpiod_line_release(line);
}

void get_pmod_lines(unsigned int pins[], struct gpiod_line *lines[]) {
   for(int i=0; i<8; i++) {
      lines[i] = gpiod_chip_get_line(chip, pins[i]);
      if(!lines[i]) {
         perror("Get line failed\n");
         gpiod_chip_close(chip);
         exit(127);
      }
   }
}

void set_pmod_lines_output(struct gpiod_line *lines[], int level){
   int ret = 0;
   for(int i=0; i<8; i++) {
      gpiod_line_request_output(lines[i], PMOD, level);
   }
   if(ret != 0) {
   // error handling
   }
}

int main(int argc, char **argv) {
   // -----------------------------------------------------------------
   // Enable the Raspberry Pi GPIO interface chip to control the pins
   // -----------------------------------------------------------------
   chip = gpiod_chip_open_by_name(CHIPNAME);
   if (!chip) {
      perror("Open chip failed\n");
      return 0;
   }

   // -----------------------------------------------------------------
   // PMOD1 Raspberry Pi GPIO + connector pin assignment array pmod_pin
   // Note: PMOD2 pins 2..4 mirror PMOD1 to provide 2x SPI device ports
   // -----------------------------------------------------------------
   unsigned int pmod_pins[8];
   pmod_pins[0] = 8;   // GPIO #08, Connector Pin 24 = LD0
   pmod_pins[1] = 10;  // GPIO #10, Connector Pin 19 = LD1
   pmod_pins[2] = 9;   // GPIO #09, Connector Pin 21 = LD2
   pmod_pins[3] = 11;  // GPIO #11, Connector Pin 23 = LD3
   pmod_pins[4] = 19;  // GPIO #19, Connector Pin 35 = LD4
   pmod_pins[5] = 21;  // GPIO #21, Connector Pin 40 = LD5
   pmod_pins[6] = 26;  // GPIO #26, Connector Pin 37 = LD6
   pmod_pins[7] = 18;  // GPIO #18, Connector Pin 12 = LD7

   // -----------------------------------------------------------------
   // For the given list of pin #, obtain the line objects for each
   // -----------------------------------------------------------------
   struct gpiod_line *pmod_lines[8];
   get_pmod_lines(pmod_pins, pmod_lines);

   // -----------------------------------------------------------------
   // Set lines as output, with initial logic level of '0'
   // -----------------------------------------------------------------
   set_pmod_lines_output(pmod_lines, 0);

   unsigned int val;
   int ret;
   // -----------------------------------------------------------------
   // Blink 20 times on pins 0 and 1, alternating '0' and '1' at 1Hz 
   // -----------------------------------------------------------------
   val = 0;
   for (int i = 20; i > 0; i--) {
      ret = gpiod_line_set_value(pmod_lines[0], val);
      if (ret < 0) {
         perror("Set line output failed\n");
                        release_line(pmod_lines[0]);
      }
      ret = gpiod_line_set_value(pmod_lines[1], !val);
      if (ret < 0) {
         perror("Set line output failed\n");
                        release_line(pmod_lines[1]);
      }
      printf("%d Output %u on line1 #%u\n",i, val, pmod_pins[0]);
      printf("%d Output %u on line2 #%u\n",i, !val, pmod_pins[1]);
      usleep(1000000);
      val = !val;
   }

   return 0;
}
