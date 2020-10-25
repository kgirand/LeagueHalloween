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
PImage scaryHouse;

void setup() {
  // 2. Set the size of your sketch to at least 600, 400
  size(1000, 800);
  
  // 3. Pick a scary house and initialize it using loadImage,
  //    example: loadImage("scaryHouse1.jpg");
  scaryHouse = loadImage( "scaryHouse1.jpg" );
  
  // 4. Resize your scary house to the window size using
  //    scaryHouse.resize(width, height);
  scaryHouse.resize(width, height);
  
  pumpkin1 = new Pumpkin(350, #E26238);
  ghost1 = new Ghost(50, 5, "right");
}

void draw() {
  // 5. Call background() with your scary house has an input parameter
  background( scaryHouse );
  
  // 6. Call the drawFloor method
  drawFloor();
  
  // 7. Make at least 2 more new pumpkins.
  //    Can you make the pumpkins bounce?
  pumpkin1.draw(false);

  // 8. Make at least 2 more new ghosts to fly across the screen
  ghost1.draw();
  
  // 9. add rain by calling rainfall.draw()
  rainfall.draw(color(mouseX, mouseY, 100));
  
  // 10. Draw some lightning by calling lightning.draw();
  //     Can you make lightning crash when you press the left mouse button? 
  lightning.draw(true);
}

void drawFloor(){
  int floorHeight = 30;
  fill( 10, 10, 30 );
  rect(0, height - floorHeight, width, floorHeight);
} //<>//
