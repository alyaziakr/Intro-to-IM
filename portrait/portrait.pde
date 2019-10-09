void setup() {
  size(700, 700);
}

void draw() {
  noStroke();
  background(color(229, 255, 255));

  //abaya
  fill(color(30, 30, 30));
  ellipse(width/2, (height/2+350), 500, 700);

  noStroke();
  //shaila
  fill(color(0, 0, 0));
  ellipse(width/2, height/2, 500, 500);

  square(width/2, height/2+200, 150);
  //skin
  noStroke();
  fill(color(255, 224, 189));
  ellipse(width/2, height/2, 400, 400);
  //blush
  fill(color(255, 150, 120));
  ellipse((width/2-100), (height/2-20), 100, 50);  

  fill(color(255, 150, 120));
  ellipse((width/2+100), (height/2-20), 100, 50);  


  noStroke();
  //eye whites
  fill(color(255, 255, 255));
  ellipse((width/2-70), (height/2-70), 100, 100);

  fill(color(255, 255, 255));
  ellipse((width/2+70), (height/2-70), 100, 100);
  //pupils
  fill(color(0, 0, 0));
  ellipse((width/2-70), (height/2-70), 50, 50);

  fill(color(0, 0, 0));
  ellipse((width/2+70), (height/2-70), 50, 50);

  //white sparkle top
  fill(color(255, 255, 255));
  ellipse((width/2-85), (height/2-80), 20, 20);

  fill(color(255, 255, 255));
  ellipse((width/2+55), (height/2-80), 20, 20);

  //eye sparkle bottom

  fill(color(255, 255, 255));
  ellipse((width/2-55), (height/2-50), 20, 20);

  fill(color(255, 255, 255));
  ellipse((width/2+85), (height/2-50), 20, 20);

  //smile
  fill(color(159, 77, 69));
  arc(width/2, height-300, 200, 100, radians(0), radians(180));

  fill(255, 255, 255);
  rect(width/2-85, height/2+50, 170, 20);

  //nose
  fill(color(255, 205, 148));
  ellipse((width/2), (height/2), 50, 20);  

  //eyebrows

  fill(color(0, 0, 0));
  rect((width/2+30), (height/2-130), 80, 10);

  fill(color(0, 0, 0));
  rect((width/2-110), (height/2-130), 80, 10);
  
  //glasses
  noFill();
  stroke(color(255));
  ellipse((width/2-70), (height/2-70), 120, 120);

  ellipse((width/2+70), (height/2-70), 120, 120);
  rect((width/2-12),(height/2-50), 25,0.5);
}
