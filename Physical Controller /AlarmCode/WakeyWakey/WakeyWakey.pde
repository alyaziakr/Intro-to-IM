/* Code to wake up a sleeping man using input from a physical sensor 
 
 -- Used elements from the graph example in arduino --
 
 by Alyazia Alremeithi */

//for communication between arduino and processing
import processing.serial.*;

//for adding sound (the alarm)
import processing.sound.*;

PImage sleepImage; //image files
PImage wakeImage;
Serial myPort;        // The serial port
float inByte = 0;
SoundFile alarm; //sound file
int played = 0;

void setup () {
  size(800, 529);
  
  //loading sound
  alarm = new SoundFile(this, "alarm.mp3");
 
  //loading images
  sleepImage = loadImage("sleep.jpg");
  wakeImage = loadImage("wake.jpg");

  myPort = new Serial(this, Serial.list()[2], 9600); //usb port
}

void serialEvent (Serial myPort) {
  //gets ascii from arduino
  String inString = myPort.readStringUntil('\n');

  if (inString != null) {
    // trims off any whitespace:
    inString = trim(inString); 
    inByte = float(inString);
  }
}

void draw () {
  background(0);
  //fill(random(0,255));
  //if the sensor is not being touched, show the sleeping image otherwise show the waking up one
  if (inByte < 1000) {
    alarm.stop();
    background(sleepImage);
    played=0;
  } else {
    background(wakeImage);
    playSound();
  }
}


void playSound() {
  if (played == 0) { //if it was the first loop it should play so it doesn't keep repeating
    alarm.loop();
    played+=1;
  }
}
