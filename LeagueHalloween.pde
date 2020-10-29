/***********  SOUND ***************
 * Some computers are unable to play sounds. 
 * If you cannot play sound on this computer, set canPlaySounds to false.
 * To install ddf.minim:
 * 1. go to 'Tools' -> Add Tool -> select the 'Libraries' tab
 * 2. In the search box type 'minim'.
 * 3. Install 'Minin | An audio library...'
 * *****************/
boolean canPlaySound = true;

Rain rainfall;
Lightning lightning;
Spotlight spotlight;

// When you get to step 7 you can add new Pumpkins and ghosts below!
Pumpkin pumpkin1;
Pumpkin pumpkin2;
Pumpkin pumpkin3;
Ghost ghost1;
Ghost ghost2;
Ghost ghost3;

// ---------------------------------------------------------
// 1. Make a PImage variable for the scary house background
//    example: PImage scaryHouse
// ---------------------------------------------------------
PImage background;

void setup() {
  // 2. Set the size of your sketch to at least 600, 400 using
  //    the size() method.
  size(600,400);
  // 3. Pick a scary house and initialize it using loadImage,
  //    example: scaryHouse = loadImage("scaryHouse1.jpg");
  background = loadImage("scaryHouse1.jpg");
  // 4. Resize your scary house to the window size using
  //    scaryHouse.resize(width, height);
  background.resize(600,400);
  // Pumpkin( x, pumpkinColor )
  pumpkin1 = new Pumpkin(350, #E26238);
  pumpkin2 = new Pumpkin(500, #E26238);
  pumpkin3 = new Pumpkin(200, #E26238);
  // Ghost( y, speed, flyingDirection )
  ghost1 = new Ghost(50, 50, "right");
  ghost2 = new Ghost(50, 5, "right");
  ghost3 = new Ghost(50, 5, "right");
  
  rainfall = new Rain();
  lightning = new Lightning();
  spotlight = new Spotlight();
}

void draw() {
  // 5. Call background() with your scary house as an input parameter
  background(background);
  // 6. Call the drawFloor() method
  drawFloor();
  // 7. Call pumpkin1.draw(false) to draw a pumpkin.
  //    Can you figure out how to make the pumpkin bounce by changing
  //    the input parameter when calling draw()?
  //
  //    Make at least 2 more new pumpkins. To do this, create new pumpkin 
  //    variables above the setup() method and then initialize them
  //    in setup(). Remember to call their draw() methods here so they appear!
  pumpkin1.draw(true);
  pumpkin2.draw(true);
  pumpkin3.draw(true);
  
  // 8. Call ghost1.draw() to draw a ghost.
  //    Make at least 2 more new ghosts to fly across the screen.
  //    To do this, create new ghost variables above the setup() method 
  //    and then initialize them in setup(). Remember to call their draw()
  //    methods here so they appear!
  ghost1.draw();
  ghost2.draw();
  ghost3.draw();
  // 9. Call rainfall.draw( <rainColor> ) to add rain.
  rainfall.draw(#0633B7);
  // 10. Display "Happy Halloween" somewhere on your display.
  //     *hint* you can use text(), textSize(), and fill()
  text("Happy Halloween",100,20);
  // 11. Call lightning.draw() to draw some lightning;
  //     Can you make lightning crash only when the mouse is pressed?
if(mousePressed==true){
 lightning.draw(); 
}
  // Try out the other scary house backgrounds and customize
  // your scary house!
  
  
  
  
  
  
  
  
  
  
  
  
  
  
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
}

void drawFloor(){
  int floorHeight = 30;
  
  push();
  
  fill( 10, 10, 30 );
  rect(0, height - floorHeight, width, floorHeight);
  
  pop();
} //<>//

// Call this method at the very bottom of the draw() method!
void drawGrayscale( boolean grayscaleEnabled ){
  if( grayscaleEnabled ){
    filter( GRAY  );    
  }
}
