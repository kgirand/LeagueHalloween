public class Ghost {
  PImage ghostImg;
  String direction;
  int x;
  int y;
  int speed = 5;

  public Ghost(int y, int speed, String direction) {
    ghostImg = loadImage( "ghost.png" );
    ghostImg.resize(150, 250);
    
    this.direction = direction;
    this.speed = speed;
    this.x = -ghostImg.width;
    this.y = y;
  }

  void draw() {
    push();

    // Makes ghost transparent
    tint(255, 125);
    
    if( direction.equalsIgnoreCase("left") ){
      // Ghost goes right to left
      
      //flip on X axis
      scale(-1,1);
      image(ghostImg, -this.x, this.y);
      
      this.x -= speed;
      
      if( this.x < -ghostImg.width ){
        this.x = width + ghostImg.width;
        
      }
    } else {
      // Ghost goes left to right
      
      image( ghostImg, this.x, this.y );
      
      this.x += speed;
      
      if ( this.x > width ) {
        this.x = -ghostImg.width;
      }
    }
    
    pop();
  }
}
