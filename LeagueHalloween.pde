/***********  SOUND ***************
 * Some computers are unable to play sounds. 
 * If you cannot play sound on this computer, set canPlaySounds to false.
 * If you are not sure, ask your teacher 
 * *****************/
boolean canPlaySound = true;

Lightning lightning = new Lightning();
Rain rainfall = new Rain();
Spotlight spotlight = new Spotlight();

// When you get to step 7 you can add new Pumpkins and ghosts below!
Pumpkin pumpkin1;
Ghost ghost1;

// ---------------------------------------------------------
// 1. Make a PImage variable for the scary house background
// ---------------------------------------------------------


void setup() {
  // 2. Set the size of your sketch to at least 600, 400
  
  // 3. Pick a scary house and initialize it using loadImage,
  //    example: scaryHouse = loadImage("scaryHouse1.jpg");
  
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
  
  // 7. Call pumpkin1.draw(false) to draw a pumpkin.
  //    Can you figure out how to make the pumpkin bounce by changing
  //    the input parameter when calling draw()?
  //
  //    Make at least 2 more new pumpkins. To do this, create new pumpkin 
  //    variables above the setup() method and then initialize them
  //    in setup(). Call their draw() methods here and they should appear!

  // 8. Call ghost1.draw() to draw a ghost.
  //    Make at least 2 more new ghosts to fly across the screen.
  //    To do this, create new ghost variables above the setup() method 
  //    and then initialize them in setup(). Call their draw() methods here
  //    and they should appear!
  
  // 9. Call rainfall.draw( <rainColor> ) to add rain
  
  // 10. Call lightning.draw(false) to draw some lightning;
  //     Can you make lightning crash when the mouse is pressed
  //     by changing the input parameter to lightning.draw()?
  
  // 11. Display "Happy Halloween" somewhere on your display.
  
  // ---------------------------------------------------------
  // Try out the other scary house backgrounds and customize
  // your scary house!
  // ---------------------------------------------------------
  
  
  
  
  
  // There is a hidden spotlight feature in this recipe.
  // See if you can figure out how to use it....
}

void drawFloor(){
  int floorHeight = 30;
  
  push();
  
  fill( 10, 10, 30 );
  rect(0, height - floorHeight, width, floorHeight);
  
  pop();
} //<>//
