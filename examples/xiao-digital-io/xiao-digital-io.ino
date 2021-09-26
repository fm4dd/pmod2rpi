
// xiao-digital-io
//
// A modified LED blink program that tests
// the Digilent 8-Led PMOD 8LD connected to
// a PMOD2RPI PMOD interface board's PMOD1.
//
// PMOD1 XIAO pin assignment:
// -----------------------------------------
// pmod1-1 = XIAO gpio D7  / pin J4-1 = LD0
// pmod1-2 = XIAO gpio D10 / pin J4-4 = LD1
// pmod1-3 = XIAO gpio D9  / pin J4-3 = LD2
// pmod1-4 = XIAO gpio D8  / pin J4-2 = LD3
// pmod1-5 = XIAO gpio D3  / pin J2-4 = LD4
// pmod1-6 = XIAO gpio D2  / pin J2-3 = LD5
// pmod1-7 = XIAO gpio D5  / pin J2-6 = LD6
// pmod1-8 = XIAO gpio D4  / pin J2-5 = LD7
// -----------------------------------------
// Note:
// PMOD2RPI SW3 flips pmod1-3/4 with pmod1-7/8 

void setup() {
  // initialize PMOD1 digital pins output.
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  // turn on all 8 LED on Digilent 8LD
  // Assignment with PMOD2RPI SW3-1 ON
  digitalWrite( 7, HIGH); // LD0
  digitalWrite(10, HIGH); // LD1
  digitalWrite( 9, HIGH); // LD2 (LD6)
  digitalWrite( 8, HIGH); // LD3 (LD7)
  digitalWrite( 3, HIGH); // LD4
  digitalWrite( 2, HIGH); // LD5
  digitalWrite( 5, HIGH); // LD6 (LD2)
  digitalWrite( 4, HIGH); // LD7 (LD3)
}

void loop() {
  digitalWrite(8, HIGH);  // turn LED LD2 on
  digitalWrite(9, LOW);   // turn LED LD3 off
  delay(500);             // wait half a second
  digitalWrite(8, LOW);   // turn LED LD2 off
  digitalWrite(9, HIGH);  // turn LED LD3 on
  delay(500);             // wait half a second
}
