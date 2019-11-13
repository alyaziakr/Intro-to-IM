PFont fontt; 
PImage backGround;
int num; //number index for the sentences

void setup() {  
  size(800, 600);
  fontt = createFont("Arial", 20); //font information and size
  textFont(fontt, 20);
  backGround=loadImage("background.png");
  background(backGround);
}

void mouseClicked() { //if mouse is clicked change the sentence randomly
  num=int(random(0, sentences.length));
  num = int(num);
}

int i=0;
void draw() {
  // background(255);

  translate(mouseX, mouseY); //location of sentence apperance is where the mouse is
  fill(0);

  fill(255, 255, 255, 55); //color and transparency
  text(sentences[num], 0, 0);
  delay(350); 
}
