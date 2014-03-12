class Element {
  int x;
  int y;
  int width;
  int height;
  color colour;
  PFont font;
  boolean isHovered;
  Element() {
   
  }
 
  Element(int x,int y, int width, int height) {
   this.x = x;
   this.y = y;
   this.width = width;
   this.height = height;
   this.colour = colour;
   this.isHovered = false;
  } 
  
  void setColour(color colour) {
    this.colour = colour;
  }
  
  void setFont(PFont font) {
    this.font = font; 
  }
  
  void isHover() {
    if (mouseX > x && mouseX < x + width && mouseY > y && mouseY < y + height) {
      this.onHover();
      isHovered = true;
    }
  }
  
  void isClicked() {
    if (mouseX > x && mouseX < x + width && mouseY > y && mouseY < y + height) {
      this.onClick();
    }
  }
  
  void isUnHovered() {
    if (isHovered && !(mouseX > x && mouseX < x + width && mouseY > y && mouseY < y + height)) {
      this.onMouseLeave();
      isHovered = false;
    }
  }
  
  void onHover() {
    // do absolutely nothing. here to be overridden
  }
  
  void onClick() {
    // do absolutely nothing. here to be overridden
  }
  
  void onMouseLeave() {
    // do nothing 
  }
  
  void draw() {
    fill(colour);
    rect(x, y, width, height);
    this.isHover();
    this.isUnHovered();
  }
  
}
