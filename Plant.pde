class leaf{
    
}




class stem{
  float strokeSize, stemlength;
  float xpos, ypos;
  stem parent;
  
  stem(float strkSize, float stmLen, stem parent){
    strokeSize = strkSize;
    stemlength = stmLen;
    this.parent = parent;
  }
  
  void update(){
    
  }
}






class root{
  linkedList<root> roots;
  
}

class seed{
  point start;
  seed(point start){
    this.start = start;
  }
}

class flower{
  
}