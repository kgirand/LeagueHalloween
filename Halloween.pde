/***********  SOUND *************** //<>//
 * Some computers are unable to play sounds. 
 * If you cannot play sound on this computer, set canPlaySounds to false.
 * If you are not sure, ask your teacher 
 * *****************/
boolean canPlaySound = false;

Lightning lightning;
Rain rainfall;
Spotlight spotlight;

// When you get to step 7 you can add new Pumpkins and ghosts below!
Pumpkin pumpkin1;
Pumpkin pumpkin2;
Pumpkin pumpkin3;
Pumpkin pumpkin4;
Ghost ghost1;
Ghost ghost2;
Ghost ghost3;
int rainAmount = 350;
int spotlightPixelSize = 4;
int spotlightSize = 200;
boolean grayscaleEnabled = false;
PFont gothic;

// ---------------------------------------------------------
// 1. Make a PImage variable for the scary house background
// ---------------------------------------------------------
PImage scaryHouse;

void setup() {
  // 2. Set the size of your sketch to at least 600, 400
  size(1000, 800);

  // 3. Pick a scary house and initialize it using loadImage,
  //    example: scaryHouse = loadImage("scaryHouse1.jpg");
  scaryHouse = loadImage( "scaryHouse1.jpg" );

  // 4. Resize your scary house to the window size using
  //    scaryHouse.resize(width, height);
  scaryHouse.resize(width, height);

  pumpkin1 = new Pumpkin(350, #E26238);
  pumpkin2 = new Pumpkin(150, #F71B44);
  pumpkin3 = new Pumpkin(550, #F7ED1B);
  pumpkin4 = new Pumpkin(750, #34282A);
  
  pumpkin1.setPumpkinStartHeight(200);
  pumpkin2.setPumpkinStartHeight(300);
  pumpkin3.setPumpkinStartHeight(400);
  
  ghost1 = new Ghost(200, 10, "left");
  ghost2 = new Ghost(100, 7, "right");
  ghost3 = new Ghost(10, 5, "left");
  
  ghost1.setGhostTransparency(0);
  ghost2.setGhostTransparency(50);
  ghost3.setGhostTransparency(90);
  
  rainfall = new Rain();
  lightning = new Lightning();
  spotlight = new Spotlight();
  gothic = loadFont("ShowcardGothic-Reg-100.vlw");
}

void draw() {
  // 5. Call background() with your scary house has an input parameter
  background( scaryHouse );

  // 6. Call the drawFloor method
  drawFloor();

  // 7. Call pumpkin1.draw() to draw a pumpkin. Can you make the pumpkin bounce?
  //    Make at least 2 more new pumpkins.
  if ( mouseX > width/2 ) {
    pumpkin1.moveRight(2);
  } else {
    pumpkin1.moveLeft(2);
  }
  pumpkin1.setPumpkinColor( color( random(256), random(256), random(256) ) );
  pumpkin1.draw(true);
  pumpkin2.draw(false);
  pumpkin3.draw(false);
  pumpkin4.draw(false);

  // 8. Call ghost1.draw() to draw a ghost.
  //    Make at least 2 more new ghosts to fly across the screen
  ghost1.draw();
  ghost2.draw();
  ghost3.draw();

  // 9. Call rainfall.draw( <rainColor> ) to add rain
  rainfall.setAmountOfRain( rainAmount );
  rainfall.draw(color(mouseX, mouseY, 100));

  // 10. Display "Happy Halloween" somewhere on your display.
  fill( #FFA500 );
  textFont(gothic, 80);
  text( "HAPPY HALLOWEEN!", 100, (height/2) - 50 );

  // 11. Call lightning.draw() to draw some lightning;
  //     Can you make lightning crash when you press the left mouse button?
  lightning.setLightningFlash(false);

  if ( mousePressed && (mouseButton == LEFT) ) {
    lightning.draw();
  }
  if ( keyPressed && ( key == 32 ) ) {
    lightning.draw();
  }

  // ---------------------------------------------------------
  // Try out the other scary house backgrounds and customize
  // your scary house!
  // ---------------------------------------------------------
















  // There are hidden spotlight and grayscale features in this
  // recipe. See if you can figure out how to use them...
  
  // ---------------------------------------------------------
  // Here are some other methods you can try:
  //  pumpkin1.setPumpkinColor();
  //  pumpkin1.setPumpkinStartHeight();
  //  pumpkin1.moveRight();
  //  pumpkin1.moveLeft();
  //  ghost1.setGhostTransparency();
  //  lightning.setLightningFlash();
  //  rainfall.setAmountOfRain();
  //  spotlight.setPixelSize();
  //  spotlight.setSpotlightSize();
  // ---------------------------------------------------------
  spotlight.setPixelSize( spotlightPixelSize );
  spotlight.setSpotlightSize( spotlightSize );

  if ( mousePressed && (mouseButton == RIGHT) ) {
    spotlight.draw();
  }

  if ( keyPressed ) {
    if ( keyCode == UP ) {
      rainAmount += 5;
      println("up " + rainAmount);
    } else if ( keyCode == DOWN ) {
      rainAmount -= 5;
      println("down " + rainAmount);
    } else if ( keyCode == LEFT ) {
      spotlightSize -= 5;
    } else if ( keyCode == RIGHT ) {
      spotlightSize += 5;
    } else if ( key == 'g' ) {
      grayscaleEnabled = true;
    } else if ( key == 'h' ) {
      grayscaleEnabled = false;
    } else if ( key >= '1' && key <= '9' ) {
      spotlightPixelSize = (key - 49) + 1 ;
      println("px " + spotlightPixelSize);
    }
  }
  
  drawGrayscale( grayscaleEnabled );
}

void drawFloor() {
  int floorHeight = 30;
  
  push();
  
  fill( 10, 10, 30 );
  rect(0, height - floorHeight, width, floorHeight);
  
  pop();
}

// Call this method at the very bottom of the draw() method!
void drawGrayscale( boolean grayscaleEnabled ){
  if( grayscaleEnabled ){
    filter( GRAY  );    
  }
}
