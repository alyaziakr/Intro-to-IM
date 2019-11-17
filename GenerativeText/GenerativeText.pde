/*

Night Thoughts

  tldr; thoughts appear, they appear where the mouse location is and
  if you click the thought changes.

Sometimes thoughts occupy too much space in your head
at night that you’re unable to sleep. These include existential crises,
everyday worries and more. Through this program I attempt
to visualize this feeling with a drawing and interactive text.

The program displays sentences that appear on the screen 
as you move your mouse around to emulate and visualize the
thought process that goes through people's minds when they're
trying to fall asleep at night. Every time you
click another thought appears.

by Alyazia Alremeithi */

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

  fill(255, 55); //color and transparency
  text(sentences[num], 0, 0);
  delay(350); 
}
