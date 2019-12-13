void startScreen() { //start screen just has the opening image
  image(opening, 0, 0);
}

void captureScreen() { //captures the users face to put into the body
  background(0);
  cam.read();
  image(cam, 0, 0);
  image(capture, 0, 0);
}


void outfitScreen() { //dresses up body
  //background(0);
  cam.stop();
  //just to displayed it once
  if (displayed == false) {
    userImage= loadImage("userImage.png");
    userImage.resize(150, 200);
    image(userImage, 201, 15);
    image(body, 0, 0);
    displayed = true;
  }
  println(r, g, b);
  //Shoes
  
  //has a value range for each red green and blue and then displays the corresponding image
  //6-7,11-13,8-9
  if (((r>=6)==true)&&((r<=7)==true)&&((g>=11)==true)&&((g<=13)==true)&&((b>=8)==true)&&((b<=9)==true)) {
    image(adidas, 0, 0);
  }
  //28-29, 23, 21-22
  if (((r>=28)==true)&&((r<=35)==true)&&((g>=21)==true)&&((g<=25)==true)&&((b>=21)==true)&&((b<=22)==true)) {
    image(heels, 0, 0);
  }
  //600-650, 375-400, 300-350
  if (((r>=600)==true)&&((r<=730)==true)&&((g>=375)==true)&&((g<=430)==true)&&((b>=300)==true)&&((b<=360)==true)) {
    image(tods, 0, 0);
  }
  
  //Pants
  //  110-140, 40-50, 45-60
  if (((r>=110)==true)&&((r<=140)==true)&&((g>=40)==true)&&((g<=50)==true)&&((b>=45)==true)&&((b<=60)==true)) {
    image(bWide, 0, 0);
  } 
  // 8-10, 8, 7-8
  if (((r>=8)==true)&&((r<=10)==true)&&((g>=8)==true)&&((g<=8)==true)&&((b>=7)==true)&&((b<=8)==true)) {
    image(gWide, 0, 0);
  } //120-140, 10-20, 35-55
  if (((r>=120)==true)&&((r<=140)==true)&&((g>=10)==true)&&((g<=20)==true)&&((b>=35)==true)&&((b<=55)==true)) {
    image(navyP, 0, 0);
  }
  //20-40, 10-20, 20-40
  if (((r>=20)==true)&&((r<=40)==true)&&((g>=10)==true)&&((g<=20)==true)&&((b>=20)==true)&&((b<=40)==true)) {
    image(pinkP, 0, 0);
  }
  //4-7, 15-17,20-27
  if (((r>=4)==true)&&((r<=7)==true)&&((g>=15)==true)&&((g<=17)==true)&&((b>=20)==true)&&((b<=27)==true)) {
    image(yellowP, 0, 0);
  }  
  
  //Shirts
  //267-290, 33-40, 80-110
  if (((r>=267)==true)&&((r<=290)==true)&&((g>=33)==true)&&((g<=40)==true)&&((b>=80)==true)&&((b<=110)==true)) {
    image(frillyS, 0, 0);
  }
  //400-450, 160-190, 160-190
  if (((r>=400)==true)&&((r<=500)==true)&&((g>=160)==true)&&((g<=190)==true)&&((b>=160)==true)&&((b<=200)==true)) {
    image(illustS, 0, 0);
  }
  //430-460, 100-130, 150-170
  if (((r>=430)==true)&&((r<=520)==true)&&((g>=100)==true)&&((g<=130)==true)&&((b>=150)==true)&&((b<=190)==true)) {
    image(jacketS, 0, 0);
  }
  //320-360, 220-260, 240-270
  if (((r>=320)==true)&&((r<=410)==true)&&((g>=220)==true)&&((g<=260)==true)&&((b>=240)==true)&&((b<=295)==true)) {
    image(stripesS, 0, 0);
  }//660-750, 450-550, 500-600
  if (((r>=660)==true)&&((r<=820)==true)&&((g>=450)==true)&&((g<=630)==true)&&((b>=500)==true)&&((b<=680)==true)) {
    image(redS, 0, 0);
  }    

}
