class Button{
  Thread function;
  String text; 
  rect bounds;
  PFont font;
  
  /**
  * Full Constructor
  */
  Button(String text, rect bounds, PFont font, Thread function){
    this.text = text;
    this.font = font;
    this.bounds = bounds;
    this.function = function;
  }
  
  /**
  * Simple constructor
  */
  Button(String text){
   this.text = text;
   this.bounds = new rect(0, 0, 10, 10);
  }
  
  
  /**
  * sets the bounds to be used in this button
  * this defines the size and position of the button
  */ 
  void setBounds(rect newBounds){
    this.bounds = newBounds;
  }
  
  
  /**
  * sets the font to be used in this button
  */
  void setFont(PFont font){
    this.font = font;
  }
  
  
  /**
  * sets the function to be used when this button is clicked
  */
  void setFunction(Thread function){
    this.function = function;
  }
  
  /**
  *returns true if the (x,y) pair of points falls within the button's bounds  
  *
  */
  boolean isWithinBounds(float xpos, float ypos){
    if(xpos >= bounds.xpos && xpos <= bounds.xpos+bounds.rwidth && ypos >= bounds.ypos && ypos <= bounds.ypos+bounds.rheight){
     return true;
    }
    return false;
  }
  
  
  boolean isWithinBounds(point p){
    return isWithinBounds(p.x, p.y);
  }
  
  void preformAction(){
    function.run();
  }
      
  
  void update(){
    fill(BLACK);
    stroke(WHITE);
    rect(bounds.xpos, bounds.ypos, bounds.rwidth, bounds.rheight);
    fill(WHITE);
    textAlign(CENTER, CENTER);
    textFont(font);
    text(text, bounds.xpos+2, bounds.ypos+2, bounds.rwidth-4, bounds.rheight-4);
  }
  
  
}