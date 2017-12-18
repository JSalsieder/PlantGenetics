class rect{
  float xpos, ypos, rwidth, rheight;
   rect(float xpos, float ypos, float rwidth, float rheight){
    this.xpos = xpos;
    this.ypos = ypos;
    this.rwidth = rwidth;
    this.rheight = rheight;
   }
   
   point TOP_LEFT(){
     return new point(xpos, ypos);
   }
   
   point BOTTOM_LEFT(){
     return new point(xpos, ypos+rheight);
   }
   
   point TOP_RIGHT(){
     return new point(xpos+rwidth, ypos);
   }
   
   point BOTTOM_RIGHT(){
     return new point(xpos+rwidth, ypos+rheight);
   }
   
   boolean contains(point p){
     if(p.x >= xpos && p.x <= xpos+rwidth && p.y >= ypos && p.y <= ypos+rheight){
     return true;
     }
    return false;
   }
   
   boolean contains(rect r){
     if(this.contains(r.BOTTOM_LEFT()) && this.contains(r.BOTTOM_RIGHT()) && this.contains(r.TOP_LEFT()) && this.contains(r.TOP_RIGHT())){
       return true;
     }
    return false;
   }
   
   boolean containsPartial(rect r){
     if(this.contains(r.BOTTOM_LEFT()) || this.contains(r.BOTTOM_RIGHT()) || this.contains(r.TOP_LEFT()) || this.contains(r.TOP_RIGHT())){
       return true;
     }
    return false;
   }
   
   
}

class point{
 float x, y;
 
 point(float x, float y){
  this.x =x;
  this.y =y;   
 }
 
 //returns the linear distance between this point and the one passed 
 float distance(point p){
   return sqrt(pow((x + p.x), 2) + pow((y + p.y), 2));
 }
  
  
}