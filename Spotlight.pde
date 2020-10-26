public class Spotlight {
  ArrayList<Pixel> pixelList;
  int pixelSize = 4;
  int spotlightSizePixels = 200;

  public Spotlight() {
    pixelList = new ArrayList<Pixel>();    
  }
  
  public void setPixelSize( int sizePixels ){
    this.pixelSize = sizePixels;
  }
  
  public void setSpotlightSizePixels( int sizePixels ){
    this.spotlightSizePixels = sizePixels;
  }
  
  void initializePixels(){
    for( int i = 0; i < width; i += pixelSize ) {
      for( int j = 0; j < height; j+= pixelSize ) {
        color c = get(i, j);
        pixelList.add( new Pixel(i, j, pixelSize, c) );
      }
    }
  }

  void draw() {
    push();
    
    if( pixelList.isEmpty() ){
      initializePixels();
    }
    
    background(0);
    
    for (int m = 0; m < pixelList.size (); m++) {
      Pixel p = (Pixel) pixelList.get(m);
      p.draw();
    }
    
    pixelList.clear();
    
    pop();
  }

  class Pixel {
    float x;
    float y;
    float pixelSize;
    color pixelColor;

    Pixel(float x, float y, float pixelSize, color pixelColor) {
      this.x = x;
      this.y = y;
      this.pixelSize = pixelSize;
      this.pixelColor = pixelColor;
    }

    void draw() {
      float xm, ym;
      float sizePixels = spotlightSizePixels * spotlightSizePixels;
      
      if( ( (x - mouseX) * (x - mouseX) ) + ( (y - mouseY) * (y - mouseY) ) <= sizePixels ) {
        xm = x + random(-1, 1);
        ym = y + random(-1, 1);
        
        if (xm > width || xm < 0) {
          xm = -xm;
        }
        if (ym> height || ym<0) {
          ym = -ym;
        }
        
        if( pixelSize > 1 ){
          fill(this.pixelColor); 
          rect(xm, ym, pixelSize, pixelSize);
        } else {
          stroke(this.pixelColor); 
          point(xm, ym);
        }
      }
    }
  }
}
