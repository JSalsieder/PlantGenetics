
/**
*  handler for keyboard input
*/
void keyPressed(){
  if(key == ' '){
    
    redraw();
  }
}

/**
*  handler for mouse input
*  causes buttons to be pressed
*/
void mousePressed(){
    for(Button b: Mainbuttons){
      if(b == null){continue;}
      if (b.isWithinBounds(mouseX, mouseY)){
        b.preformAction();
      }
    }
    for(Button b: Settingbuttons){
      if(b == null){continue;}
      if (b.isWithinBounds(mouseX, mouseY)){
        b.preformAction();
      }
    }
    for(Button b: profileButtons){
      if(b == null){continue;}
      if (b.isWithinBounds(mouseX, mouseY)){
        b.preformAction();
      }
    }
}