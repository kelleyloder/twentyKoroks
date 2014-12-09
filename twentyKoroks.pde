void setup() {
  //sets size of picture, stroke weight, and background color
  size(1025, 650);
  strokeWeight(1.5);
  background(0, 0, 0);
  noLoop();
}

void draw() {
  //main function to draw the koroks with two for-loops to create 2 rows of 10 korok images
  String faceType;
  int xInit;
  int yInit;
  int fillBodyRed;
  int fillBodyGreen;
  int fillBodyBlue;
  int fillFaceRed;
  int fillFaceGreen;
  int fillFaceBlue;
  int fillTextBoxRed;
  int fillTextBoxGreen;
  int fillTextBoxBlue;
  for(int i = 0; i < 10; i = i + 1) {
    for(int j = 0; j < 2; j = j + 1) {
      //generate random integers to set korok's body and face colors
      fillBodyRed = int(random(255));
      fillBodyGreen = int(random(255));
      fillBodyBlue = int(random(255));
      fillFaceRed = int(random(255));
      fillFaceGreen = int(random(255));
      fillFaceBlue = int(random(255));
      //set faceType to oval if even number and triangle if odd
      if(i % 2 == 0){
        faceType = "oval";
      }
      else {
        faceType = "triangle";
      }
      //set x and y position for korok
      xInit = i * 100 + 50;
      yInit = j * 300 + 100;
      drawKorok(xInit, yInit, faceType, fillBodyRed, fillBodyGreen, fillBodyBlue, fillFaceRed, fillFaceGreen, fillFaceBlue);
    }
  }
  
  //new x and y position and fill colors for signiture
  xInit = 840;
  yInit = 615;
  fillTextBoxRed = int(random(255));
  fillTextBoxGreen = int(random(255));
  fillTextBoxBlue = int(random(255));
  drawSigniture(xInit, yInit, fillTextBoxRed, fillTextBoxGreen, fillTextBoxBlue);
}

void drawKorok(int xInit, int yInit, String faceType, int fillBodyRed, int fillBodyGreen, int fillBodyBlue, int fillFaceRed, int fillFaceGreen, int fillFaceBlue) {
  //draws a korok according to the starting x and y position, face type, and fill colors
  drawBody(xInit, yInit, fillBodyRed, fillBodyGreen, fillBodyBlue);
  if(faceType == "oval") {
    drawOvalFace(xInit, yInit, fillFaceRed, fillFaceGreen, fillFaceBlue);
  }
  else {
    drawTriangleFace(xInit, yInit, fillFaceRed, fillFaceGreen, fillFaceBlue);
  }
  drawEyes(xInit, yInit);
  drawNose(xInit, yInit);
  drawMouth(xInit, yInit);
}

void drawBody(int xInit, int yInit, int fillBodyRed, int fillBodyGreen, int fillBodyBlue) {
  //draws korok's body according to starting x and y position and fill colors
  fill(fillBodyRed, fillBodyGreen, fillBodyBlue);
  beginShape();
    vertex(xInit, yInit - 40);
    vertex(xInit + 40, yInit - 60);
    vertex(xInit + 20, yInit + 20);
    vertex(xInit + 25, yInit + 65);
    vertex(xInit + 45, yInit + 65);
    vertex(xInit + 26, yInit + 74);
    vertex(xInit + 40, yInit + 200);
    vertex(xInit, yInit + 170);
    vertex(xInit - 40, yInit + 200);
    vertex(xInit - 26, yInit + 74);
    vertex(xInit - 45, yInit + 65);
    vertex(xInit - 25, yInit + 65);
    vertex(xInit - 20, yInit + 20);
    vertex(xInit - 40, yInit - 60);
    vertex(xInit, yInit - 40);
  endShape();
}

void drawTriangleFace(int xInit, int yInit, int fillFaceRed, int fillFaceGreen, int fillFaceBlue) {
  //draws korok's triangle face according to starting x and y position and fill colors
  fill(fillFaceRed, fillFaceGreen, fillFaceBlue);
  beginShape();
    vertex(xInit - 50, yInit - 40);
    vertex(xInit, yInit - 25);
    vertex(xInit + 50, yInit - 40);
    vertex(xInit, yInit + 40);
    vertex(xInit - 50, yInit - 40);
  endShape();
}

void drawOvalFace(int xInit, int yInit, int fillFaceRed, int fillFaceGreen, int fillFaceBlue) {
  //draws korok's oval face according to starting x and y position and fill colors
  fill(fillFaceRed, fillFaceGreen, fillFaceBlue);
  ellipse(xInit, yInit, 50, 100);
}

void drawEyes(int xInit, int yInit) {
  //draws korok's eyes according to starting x and y position
  fill(0, 0, 0);
  ellipse(xInit - 8, yInit - 10, 6, 3);
  ellipse(xInit + 8, yInit - 10, 6, 3);
}

void drawNose(int xInit, int yInit) {
  //draws korok's nose according to starting x and y position
  fill(100, 20, 20);
  triangle(xInit, yInit, xInit + 10, yInit, xInit, yInit + 5);
}

void drawMouth(int xInit, int yInit) {
  //draws korok's mouth according to starting x and y position
  fill(0, 0, 0);
  triangle(xInit, yInit + 15, xInit - 2, yInit + 23, xInit + 2, yInit + 23);
}

void drawSigniture(int xInit, int yInit, int fillTextBoxRed, int fillTextBoxGreen, int fillTextBoxBlue) {
  //draws rectangular text box and signs name in it
  fill(fillTextBoxRed, fillTextBoxGreen, fillTextBoxBlue);
  rect(xInit, yInit, 170, 20);
  fill(0, 0, 0);
  text("Created by: Kelley Loder", xInit + 15, yInit + 15);
}
