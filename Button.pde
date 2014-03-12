class Button extends Element {
  color labelColour;
  String text;
  color borderColour;
  Button(int x,int y,int width, int height) {
   super(x,y,width,height);
   this.colour = color(150);
   this.labelColour = color(255);
   this.borderColour = #000000;
  } 
  
  void setLabelColour(color colour) {
    this.labelColour = colour;
  }
  
  void setText(String text) {
    this.text = text;
  }
  
  void onHover() {
    this.borderColour = #FFFFFF;
  }
  
  void onClick() {
    background(labelColour);
  }
  
  void onMouseLeave() {
   this.borderColour = #000000; 
  }
  
  void draw() {
    stroke(this.borderColour);
    super.draw();
    fill(labelColour);  
    text(text,  x+10,  y+height-10); 
  }  
}
