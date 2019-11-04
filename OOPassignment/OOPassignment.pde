//Alyazia Alremeithi

/* this is a game where you have to click fast enough
 to release all the squares within a set time limit! */

//game screen and game guide: https://www.toptal.com/game/ultimate-guide-to-processing-simple-game
//OOP Tutorial: https://www.youtube.com/watch?v=YcbcfkLzgvs&t=2s

int numOfSquares = 40; //Number of total squares in the game
Square [] squares= new Square[numOfSquares]; //making the multiple squares
int release; //for counting the number of times clicked to release squares
int gameScreen = 0; //for the start screen, game screen and end screen
long duration = 20;
long duration2 = 20;
long startMillis;
long previousMillis = 0; 

void setup() {
  size(500, 500);
  // startMillis = millis();
  //making the squares random 1. size 2. color(RGB) 3. speed
  for (int i=0; i<numOfSquares; i++) {
    squares[i]= new Square(random(5, 100), random(0, 240), random(0, 240), random(0, 240), random(5, 10));
  }
}

//adds a number whenever the mouse is pressed
void mousePressed() {

  if (gameScreen==0) {
    gameScreen=1;
    gameScreen();
  }
  if (gameScreen ==1) {
    release ++;
  }
}

//Start Screen

void startScreen() {
  background(0);
  fill(255);
  text("There are some boxes that are stuck :((", 50,50);
  text("Everytime you click anywhere in a screen a box is freed!!!!", 50,100);
  text("Be a hero and release the boxes before its too late!!!!!!!!",50,150);
  text("Instructions: Click to release all the boxes within a set time!!", 50, 200);
  text("click to start", 50, 250);
  fill(255,0,0);
  text("HURRY UP A 20 SECOND TIMER HAS ALREADY BEGUN!!",50,300);
  }


//Game Screen


void gameScreen() {
  background(255);
  text("boxes left:",80,50);
  text((numOfSquares-release), 80, 70);
  //timer
  if (duration >0) {
    duration = duration2-(millis())/1000;
    fill(0);
    text(duration, 80, 90);
  }
  gameScreen = 1;
  if (release<numOfSquares) {
    for (int i=0; i<release; i++) {
      squares[i].ascend();
      squares[i].display();
    }
  } 
  if (duration == 0 || release == numOfSquares) {
    gameScreen = 2;
  }
}

//Game Over Screen
void gameOver() {
  fill(255);
  background(0);
  if (release >= numOfSquares) {
    text("congrats you won!", 100, 100);
  } else {
    text("Boo hoo! You lost", 100, 100);
  }
}

void draw() {

  //if the gamescreen is 0 it goes to the start screen, if its 1 it goes to the game and if its 2 it shows the game over
  if (gameScreen == 0) {
    startScreen();
  } else if (gameScreen ==1) {
    gameScreen();
  } else if (gameScreen == 2) {
    gameOver();
  }
}
