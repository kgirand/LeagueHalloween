public class Ghost {
  private PImage ghostImg;
  private String direction;
  private int x;
  private int y;
  private int speed = 5;
  private int transparency = 125;

  public Ghost(int y, int speed, String direction) {
    ghostImg = loadImage( "ghost.png" );
    ghostImg.resize(150, 250);
    
    this.direction = direction;
    this.speed = speed;
    this.x = -ghostImg.width;
    this.y = y;
  }
  
  public void setGhostTransparency( int transparency ){
    this.transparency = transparency;
  }

  void draw() {
    push();

    // Makes ghost transparent
    tint(255, this.transparency);
    
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
