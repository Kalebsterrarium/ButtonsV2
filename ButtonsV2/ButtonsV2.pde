float rectX, rectY, rectWidth, rectHeight;
color buttonColour, yellow=#E0D71D, orange=#E0931D, nightyellow, nightorange, white=#FFFFFF, reset=white;








void setup () {
  fullScreen();
  //Population 
  rectX=displayWidth*1/4;
  rectY=displayHeight*1/4;
  rectWidth=displayWidth*1/2;
  rectHeight=displayHeight*1/2;
}//End setup()




void draw() {
  background(color(random(0),random(255),random(0)));
  println(mouseX, mouseY);
  if ( mouseX >=rectX && mouseY >= rectY && mouseX <= rectX+rectWidth && mouseY <= rectY+rectHeight) {
    buttonColour = color(random(255),random(0),random(0));
  } else {
    buttonColour = color(random(255),random(255),random(255));
    
  }//End IF Button Colour
  fill(buttonColour);
  rect(rectX, rectY, rectWidth, rectHeight);
  fill(reset);
}//End draw()

void mousePressed() {
  if (mouseX >=rectX && mouseY >= rectY && mouseX <= rectX+rectWidth && mouseY <= rectY+rectHeight) exit();
}//End mousePressed()

  
