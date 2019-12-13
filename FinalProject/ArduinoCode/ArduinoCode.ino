/*


  Gets RGB values from color sensor with the help of the example
  by Shawn Hymel . (https://github.com/sparkfun/APDS-9960_RGB_and_Gesture_Sensor)

  Hardware Connections:

  3.3V         VCC
  GND          GND
  A4           SDA
  A5           SCL


*/

#include <Wire.h>
#include <SparkFun_APDS9960.h>

// Global Variables
SparkFun_APDS9960 apds = SparkFun_APDS9960(); //sensor
uint16_t red_light = 0; //red
uint16_t green_light = 0; //green
uint16_t blue_light = 0; //blue

void setup() {

  Serial.begin(9600);

  // Initializes the sensor
  if ( apds.init() ) {
    Serial.println(F("init complete"));
  } else {
    Serial.println(F("Failed init"));
  }

  // Start running the sensor
  if ( apds.enableLightSensor(false) ) {
    Serial.println(F("sensors running"));
  } else {
    Serial.println(F("init failed"));
  }

  // Waits for initialization and calibration to finish
  delay(500);
}

void loop() {

  // Read the light levels (red, green, blue)
  if (  !apds.readRedLight(red_light) ||
        !apds.readGreenLight(green_light) ||
        !apds.readBlueLight(blue_light) ) {
    // if theres an error it prints it
    //Serial.println("Error reading light values");
  } else {

    //serial prints RGB seperated by commas which is then sent and sliced in processing
    Serial.print(red_light);
    Serial.print(",");
    Serial.print(green_light);
    Serial.print(",");
    Serial.println(blue_light);
  }

  // Wait 1 second before next reading
  delay(1000);
}
