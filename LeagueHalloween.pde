/***********  SOUND ***************
 * Some computers are unable to play sounds. 
 * If you cannot play sound on this computer, set canPlaySounds to false.
 * If you are not sure, ask your teacher 
 * *****************/
boolean canPlaySound = true;

Lightning lightning = new Lightning();
Rain rainfall = new Rain();

// When you get to step 7 you can add new Pumpkins and ghosts below!
Pumpkin pumpkin1;
Ghost ghost1;

// ---------------------------------------------------------
// 1. Make a PImage variable for the scary house background
// ---------------------------------------------------------


void setup() {
  // 2. Set the size of your sketch to at least 600, 400
  
  // 3. Pick a scary house and initialize it using loadImage,
  //    example: loadImage("scaryHouse1.jpg");
  
  // 4. Resize your scary house to the window size using
  //    scaryHouse.resize(width, height);
  
  
  // Pumpkin( x, pumpkinColor )
  pumpkin1 = new Pumpkin(350, #E26238);
  
  // Ghost( y, speed, flyingDirection )
  ghost1 = new Ghost(50, 5, "right");
}

void draw() {
  // 5. Call background() with your scary house as an input parameter
  
  // 6. Call the drawFloor method
  
  // 7. Call pumpkin1.draw() to draw a pumpkin. Can you make the pumpkin bounce?
  //    Make at least 2 more new pumpkins.

  // 8. Call ghost1.draw() to draw a ghost.
  //    Make at least 2 more new ghosts to fly across the screen
  
  // 9. Call rainfall.draw( <rainColor> ) to add rain
  
  // 10. Call lightning.draw() to draw some lightning;
  //     Can you make lightning crash when you press the left mouse button?
  
  // 11. Display "Happy Halloween" somewhere on your display.
  
  // ---------------------------------------------------------
  // Try out the other scary house backgrounds and customize
  // your scary house!
  // ---------------------------------------------------------
}

void drawFloor(){
  int floorHeight = 30;
  
  push();
  
  fill( 10, 10, 30 );
  rect(0, height - floorHeight, width, floorHeight);
  
  pop();
} //<>//
