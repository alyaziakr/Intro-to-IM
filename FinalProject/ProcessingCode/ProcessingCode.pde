/*

 This is the processing code for my intro to IM Final Project
 
 It is a outfit "builder"
 
 Concept: A user chooses between a top bottom and shoes and uses this program
 to visualize what they'd look like wearing it
 
 Example material has been used in the writing of this 
 code including the capture example from the processing website and 
 the serial communication graph example from arduino
 
 By Alyazia Alremeithi*/

import processing.serial.*;
import processing.video.*;

int screenState = 0; //to see if its the start screen, capture screen or outfit screen

Capture cam; //camera

//serial communication
Serial myPort;
float inByte = 0; //serial inbyte
int r =0; //red value
int b =0; //green value
int g =0; //blue value


//to move into next screen after capturing 
int hasCaptured = 0; //check if screen captured
boolean displayed = false; //check if screen is displayed


int widthSize = 550; //width and height of screen
int heightSize =700;

void setup() {
  size(550, 700);
  //communication
  //println(Serial.list()); //prints available port list
  myPort = new Serial(this, Serial.list()[2], 9600);
  myPort.bufferUntil('\n');
  delay(1000); 
  //camera loading and capturing
  String[] cameras = Capture.list(); //gets list of available cameras
  cam = new Capture(this, cameras[0]); //I only have one camera so its 0
  cam.start(); //starts capturing
  loadImages(); // loads images from a function i wrote elsewhere for the sake of clutter
}


void mouseClicked() {
  if (screenState == 0) { //if mouse is clicked on the first screen it moves to the next
    screenState = 1;
  }
  if (screenState == 1) {
    saveFrame("userImage.png");
    hasCaptured+=1; //only moves to the next screen after it saves a picture
    if (hasCaptured>=2) {
      screenState = 2;
    }
  }
}



void draw() { //shows screen based on which state the program is in
   //screenState=2; //for quick testing

  println(r,g,b); //prints the color value in the console for trouble shooting
  if (screenState == 0) {
    startScreen();
  } else if (screenState == 1) {
    captureScreen();
  } else if (screenState == 2) {
    outfitScreen();
  }
}
