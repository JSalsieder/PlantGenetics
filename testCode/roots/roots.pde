//this file is an attempt to generate root-like structures for the plants


void setup(){
 size(1000, 1000); //and he said let there be light, and there was light
 background(#FFFFFF); // then he said, grey is too drab let it be white, and it was white
 lin l2; // the on the third line he said let there be lines 
 lin l1; // and there were lines.
 int strk =#00000F;
 for(int x =0;x<20;x++){
   stroke(strk);
   l1 = new lin();
 for(int i = 0; i <95; i++){
   l2 = new lin(l1, 30); //<>//
   l1 = l2;
 }
  strk = strk * 0xF; //and he said let the lines be colorful, and the lines where colorful
 }
}

//ok so there just lines with an associated angle, but line is already a function in
//the API so "lin" will have to do... not to be confused with USARTs LIN mode
class lin{
 float x1, x2, y1, y2;
 float angle;
  
  lin(){
    angle = 90; //<>//
    x1 = 500;
    x2 = 500;
    y1 = 0;
    y2 = 10;   
    line(x1,y1,x2,y2);
  }
  
  //splay is the angle the next segment of a root will take 
  // and is defined as : next_root_angle = parent_root_angle +/- splat/2
  lin(lin parent, float splay){
    x1 = parent.x2; //<>//
    y1 = parent.y2;
    angle = parent.angle + map(random(1), 0, 1, -splay/2, splay/2);
    angle = angle < 0 ? 0 : angle;
    angle = angle > 180 ? 180 : angle;
    x2 = x1 + 10*cos(radians(angle));
    y2 = y1 + 10*sin(radians(angle));
    line(x1, y1,x2,y2);
    
  }
}