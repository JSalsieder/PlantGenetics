Button Settingbuttons[] = {new Button("Soil Profile"), new Button("Save & Quit")};
Button Mainbuttons[] = {new Button("Settings")};
Button profileButtons[] = {new Button("Profile 1"), new Button("Profile 2"), new Button("Profile 3")};
enum buttonSelected {SOIL_PROFILE, SAVE, CANCEL};
boolean settingsOpen = true;
boolean SoilProfileOpen = false;
PImage soilProfile1, soilProfile2, soilProfile3, display=null;
int selectedButton= -1;



void draw() {
  
  PFont font_small, font_medium, font_large;
  soilProfile1 = loadImage("Profile1.PNG");
  soilProfile2 = loadImage("Profile2.PNG");
  soilProfile3 = loadImage("Profile3.PNG");
  font_small = loadFont("RIGOL12.vlw");
  font_medium = loadFont("RIGOL22.vlw");
  font_large = loadFont("RIGOL30.vlw");
  
  clear();
  stroke(WHITE);
  //draw a ground line
  line(0, height*GROUND_POS, width, height*GROUND_POS);
  //draw the mouse position 
  
  textFont(font_small);
  fill(WHITE);
  textAlign(TOP, RIGHT);
  text("("+mouseX+ ", " + mouseY +')', 10, 15);
  
  //main display buttons
  
  
  Mainbuttons[0].setBounds(new rect(width-110, 10, 100, 50));
  Mainbuttons[0].setFont(font_medium);
  Mainbuttons[0].setFunction( new Thread(new Runnable(){
    public void run(){
     settingsOpen = true; 
    }
  }));
  Mainbuttons[0].update();
  
  
  
  
  
  
  
  
    
  if(settingsOpen){  //settings menu
  
    //------CREATE THE FRAME--------------------------------
    fill(BLACK);
    stroke(WHITE);
    rect(width/2 - SETTINGS_WIDOOW_WIDTH/2, height/2-SETTINGS_WINDOW_HEIGHT/2, SETTINGS_WIDOOW_WIDTH, SETTINGS_WINDOW_HEIGHT);
    line(width/2 - SETTINGS_WIDOOW_WIDTH/2, height/2-SETTINGS_WINDOW_HEIGHT/2 + 30, width/2 + SETTINGS_WIDOOW_WIDTH/2, height/2-SETTINGS_WINDOW_HEIGHT/2 + 30);
    line(width/2 - SETTINGS_WIDOOW_WIDTH/2 + 100, height/2-SETTINGS_WINDOW_HEIGHT/2 + 30, width/2 - SETTINGS_WIDOOW_WIDTH/2 + 100 , height/2+SETTINGS_WINDOW_HEIGHT/2);
    
    textFont(font_large); 
    fill(WHITE);
    textAlign(TOP, RIGHT);
    text("Settings", width/2 - SETTINGS_WIDOOW_WIDTH/2 + 5, height/2-SETTINGS_WINDOW_HEIGHT/2 + 25);
    //------------------------------------------------------
    
    
    
    //----------MENU BUTTONS SETUP--------------------------
    
    Settingbuttons[0].setBounds(new rect(width/2 - SETTINGS_WIDOOW_WIDTH/2 +5, height/2-SETTINGS_WINDOW_HEIGHT/2 + 35, 90, 50));
    Settingbuttons[0].setFunction(new Thread( new Runnable(){
        public void run(){
          SoilProfileOpen = true;
        }
    } ));
    
    
    Settingbuttons[1].setBounds(new rect(width/2 - SETTINGS_WIDOOW_WIDTH/2 +5, height/2+SETTINGS_WINDOW_HEIGHT/2 - 60, 90, 50));
    Settingbuttons[1].setFunction(new Thread( new Runnable(){
        public void run(){
          SoilProfileOpen = false;
          settingsOpen = false;
        }
    } ));
    //-----------------------------------------------------
    
    rect viewPane = new rect(660, 270, 700, 570);
    
    //PANE ---- SOIL PROFILE -----------------------------
      if(SoilProfileOpen){
        if(display != null){
          image(display, viewPane.xpos+10, viewPane.ypos+10, viewPane.rwidth-20, viewPane.rheight-100);
        }

        profileButtons[0].setBounds(new rect(viewPane.BOTTOM_LEFT().x +10, viewPane.BOTTOM_LEFT().y-60, 90, 50));
        profileButtons[0].setFont(font_medium);
        profileButtons[0].setFunction(new Thread(new Runnable(){
                  public void run(){
                    display = soilProfile1;
                  }
                }));
                
        profileButtons[1].setBounds(new rect(viewPane.xpos + viewPane.rwidth/2-45, viewPane.BOTTOM_LEFT().y-60, 90,50));
        profileButtons[1].setFont(font_medium);
        profileButtons[1].setFunction(new Thread(new Runnable(){
                  public void run(){
                    display = soilProfile2;
                  }
                }));
       profileButtons[2].setBounds(new rect(viewPane.BOTTOM_RIGHT().x -100, viewPane.BOTTOM_LEFT().y-60, 90,50));
       profileButtons[2].setFont(font_medium);
       profileButtons[2].setFunction(new Thread(new Runnable(){
                  public void run(){
                    display = soilProfile3;
                  }
                }));
  
        
        for(Button b: profileButtons){
          if(b == null){ continue; }
          b.setFont(font_medium);
          b.update();
        }
        
      }
    //-----------------------------------------------------
    
    
    
    

    //-----UPDATE GRAPHICS IN THE SETTINGS MENUE-----------
    for(Button b: Settingbuttons){
      if(b == null){ continue; }
        b.setFont(font_medium);
        b.update();
    }
    //-----------------------------------------------------
   
  }//END OF SETTINGS MENU
  
}//END OF DRAW