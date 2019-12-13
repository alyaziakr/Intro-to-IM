//image definitions and loads

PImage userImage;
//UI
PImage body;
PImage capture;
PImage opening;
//shoes
PImage adidas;
PImage heels;
PImage tods;
//pants
PImage bWide; 
PImage gWide; 
PImage navyP;
PImage pinkP;
PImage yellowP;
//shirts;
PImage frillyS;
PImage illustS;
PImage jacketS;
PImage stripesS;
PImage redS;

void loadImages() {
  //Images
  //UI
  body= loadImage("Images/UI/Body.png");
  body.resize(widthSize, heightSize);
  capture= loadImage("Images/UI/Capture.png");
  capture.resize(widthSize, heightSize);
  opening= loadImage("Images/UI/Opening.png");
  opening.resize(widthSize, heightSize);
  //shoes
  adidas= loadImage("Images/Shoes/Adidas.png");
  adidas.resize(widthSize, heightSize);
  heels= loadImage("Images/Shoes/Heels.png");
  heels.resize(widthSize, heightSize);
  tods= loadImage("Images/Shoes/Tods.png");
  tods.resize(widthSize, heightSize);
  //pants
  bWide= loadImage("Images/Pants/BWide.png"); 
  bWide.resize(widthSize, heightSize);
  gWide= loadImage("Images/Pants/GreyWide.png");
  gWide.resize(widthSize, heightSize);
  navyP= loadImage("Images/Pants/NavyPants.png");
  navyP.resize(widthSize, heightSize);
  pinkP= loadImage("Images/Pants/PinkPants.png");
  pinkP.resize(widthSize, heightSize);
  yellowP= loadImage("Images/Pants/YellowPants.png");
  yellowP.resize(widthSize, heightSize);
  //shirts;
  frillyS= loadImage("Images/Shirts/Frilly.png");
  frillyS.resize(widthSize, heightSize);
  illustS= loadImage("Images/Shirts/Illust.png");
  illustS.resize(widthSize, heightSize);
  jacketS= loadImage("Images/Shirts/Jacket.png");
  jacketS.resize(widthSize, heightSize);
  stripesS= loadImage("Images/Shirts/Stripes.png");
  stripesS.resize(widthSize, heightSize);
  redS= loadImage("Images/Shirts/Red.png") ;
  redS.resize(widthSize, heightSize);
}
