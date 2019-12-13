//serial communication to get the values from arduino

void serialEvent (Serial myPort) {
  //gets string of values to the end of the line
  String inString = myPort.readStringUntil('\n');
    //print(inString);
  if (inString != null) {
    // trims off any whitespace:
    inString = trim(inString); 
    //splits values into a string array using the comma between them
    String[] rgbstring = split(inString, ',');
    //turns string to integer
    r = Integer.parseInt(rgbstring[0]);
    g = Integer.parseInt(rgbstring[1]);
    b = Integer.parseInt(rgbstring[2]);
    
  }
}
