class Button{
  private Thread function;
  private String text; 
  private rect bounds;
  private PFont font;
  private int bgColor,borderColor,fontColor;
  private int ID;
  
  
  /**
  * Full Constructor
  */
  Button(String text, rect bounds, PFont font, Thread function){
    this.text = text;
    this.font = font;
    this.bounds = bounds;
    this.function = function;
    this.bgColor = BLACK;
    this.borderColor = WHITE;
    this.fontColor = WHITE;
  }
  
  /**
  * Simple constructor
  */
  Button(String text){
    this.text = text;
    bounds =  new rect(0, 0, 10, 10);
    this.bgColor = BLACK;
    this.borderColor = WHITE;
    this.fontColor = WHITE;
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
  
  void setID(int id){
    ID = id;
  }
   
  int getID(){
    return ID;
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
      
      
  void setStandardColors(){ 
    bgColor = BLACK;
    borderColor = WHITE;
    fontColor = WHITE;
    this.update();
  }
  
  void setInvertedColors(){
    bgColor = WHITE;
    borderColor = BLACK;
    fontColor = BLACK;
    this.update();
  }
  
  
  void update(){
    fill(bgColor);
    stroke(borderColor);
    rect(bounds.xpos, bounds.ypos, bounds.rwidth, bounds.rheight);
    fill(fontColor);
    textAlign(CENTER, CENTER);
    textFont(font);
    text(text, bounds.xpos+2, bounds.ypos+2, bounds.rwidth-4, bounds.rheight-4);
  }
  
  
}