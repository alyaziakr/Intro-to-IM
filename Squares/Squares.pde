
//dimensions of the squares/boxes
int dim = 5;

void setup() {
  background(255);
  size(500, 500);
  noFill();
 
 //nested for loop: getting the squares to be displayed row by row 
 for(int j=0; j<dim; j++){  
  pushMatrix();
  int shift = j*100; //shifts the rows
  translate(0,shift);
  box();
  for (int i=0; i<dim;i++){
    int shift1 = i+100; //shifts the placements vertically
    translate(shift1,0);
    box();}
  popMatrix();}
  
}

  
void draw() {
}

  
void box() {
  int locX =0; //location of box
  int locY =0;
  int boxSize =100;
  //outside box
  rect(locX, locY, boxSize, boxSize); //rectangle of the outside box
  //box 1
  int sizeX1 = int (random(70, 90));
  int sizeY1 = int(random(70, 90));
  if (sizeX1>=boxSize) { // making sure the inner box is smaller than outter ones
    sizeX1 = int (random(boxSize-20, boxSize-10));
  }
  if (sizeY1>=boxSize) { //again with the y size
    sizeY1 = int (random(boxSize-20, boxSize-10));
  }
  rect(locX+5, locY+5, sizeX1, sizeY1);


  //box2 repeate with smaller numbers for smaller boxes
  int sizeX2 = int (random(40, 65));
  int sizeY2 = int(random(40, 65));
  if (sizeX2>=sizeX1) {
    sizeX2 = int (random(sizeX1-10, sizeX1-10));
  }
  if (sizeY2>=sizeY1) {
    sizeY2 = int (random(sizeY1-20, sizeY1-10));
  }
  rect(locX+10, locY+10, sizeX2, sizeY2);


  //box3
  int sizeX3 = int (random(20, 35));
  int sizeY3 = int(random(20, 35));
  if (sizeX3>=sizeX2) {
    sizeX3 = int (random(sizeX2-10, sizeX2-10));
  }
  if (sizeY3>=sizeY2) {
    sizeY3 = int (random(sizeY2-20, sizeY2-10));
  }
  rect(locX+20, locY+20, sizeX3, sizeY3);

  //box 4

  //box3
  int sizeX4 = int (random(5, 15));
  int sizeY4 = int(random(5, 15));
  if (sizeX4>=sizeX3) {
    sizeX4 = int (random(sizeX3-10, sizeX3-10));
  }
  if (sizeY4>=sizeY3) {
    sizeY3 = int (random(sizeY2-20, sizeY2-10));
  }
  rect(locX+25, locY+25, sizeX4, sizeY4);
}
