ArrayList<Button> buttons;
Button button;
void setup() {
  String[] colourNames = {"red","green","blue"};
  color[] colourValues = {#B22222, #3CB371, #1E90FF};
  size(SCREENX, SCREENY);
  buttons =  new ArrayList<Button>();
  for (int i = 0; i < 3; i++) {
    button = new Button(SCREENX/2 - 30, SCREENY/4 * (i + 1), 60, 40);
    button.setText(colourNames[i]);
    button.setColour(color(255));
    button.setLabelColour(colourValues[i]);
    buttons.add(button);
  }
}

void draw() {
  for(int i = 0; i < buttons.size(); i++) {
    button = buttons.get(i);
    button.draw();
  }
}

void mousePressed() {
  for(int i = 0; i < buttons.size(); i++) {
    button = buttons.get(i);
    button.isClicked();
  }
}
