float rectX, rectY, rectWidth, rectHeight;
color buttonColour, yellow=#E0D71D, orange=#E0931D, nightyellow, nightorange, white=#FFFFFF, reset=white,Party;
//int titleX, titleY, titleWidth, titleHeight;
String title="Hover for Party Time!";
PFont titleFont;
float circle1X, circle1Y, circleDiameter, circle2X, circle2Y;



void setup () {
  fullScreen();
  //Population 
  rectX=displayWidth*1/4;
  rectY=displayHeight*1/4;
  rectWidth=displayWidth*1/2;
  rectHeight=displayHeight*1/2;
  titleFont = createFont("Calibri",55);
  
  
}//End setup()




void draw() {
  
  println(mouseX, mouseY);
  if ( mouseX >=rectX && mouseY >= rectY && mouseX <= rectX+rectWidth && mouseY <= rectY+rectHeight) {
    
    buttonColour = color(random(255),random(255),random(255));
    Party = color(random(255),random(255),random(255));
    background(color(random(255),random(255),random(255)));
    circleDiameter = random(displayWidth*1/20, width*1/6);
    circle1X=random(displayWidth*1/20, width*19/20);
  circle1Y=random(displayHeight*1/20, height*19/20);
  circle2X=random(displayWidth*1/20, width*19/20);
  circle2Y=random(displayHeight*1/20, height*19/20);
  fill(Party);
  ellipse(circle1X, circle1Y, circleDiameter,circleDiameter);
  ellipse(circle2X, circle2Y, circleDiameter,circleDiameter);
  fill(reset);
  } else {
    buttonColour = orange;
    Party = yellow;
    background(reset);
    circleDiameter = displayWidth*1/6;
    circle1X=displayWidth*1/7;
  circle1Y=displayHeight*1/3;
  circle2X=displayWidth*6/7;
  circle2Y= displayHeight*1/3;
  }//End IF Button Colour
  fill(buttonColour);
  rect(rectX, rectY, rectWidth, rectHeight);
  fill(reset);
  fill(Party);
  text(title,rectX, rectY, rectWidth, rectHeight);
  textAlign(CENTER,CENTER);
  textFont(titleFont, 55);
  fill(reset);
  
  //fill(reset);
}//End draw()

void mousePressed() {
  if (mouseX >=rectX && mouseY >= rectY && mouseX <= rectX+rectWidth && mouseY <= rectY+rectHeight) exit();
}//End mousePressed()

  
