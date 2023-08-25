//center pt
int cx = 200;
int cy = 200;

//hip center pt
int cHipX = 202;
int cHipY = 236;

//leg & feet constants
int LegOffsetX = 10;
int legWidth = 6;
  
void setup(){
  size(400,400);
  background(153, 204, 255);
}

void draw(){
 
  //ground and sky
  fill(102, 102, 51);
  rect(0,260,400,200);
  
  //head fur tuff
  fill(0,0,0);
  genObj(200,63,0, 5,225,23);
  genObj(200,63,0, 5,180,30);
  genObj(200,63,0, 5,150,27);
  
  //wings
  fill(40,40,40);
  triangle(236,144,234,206,354,220);
  triangle(162,144,167,206,60,220);
  
  //head & torso
  fill(40,40,40);
  ellipse(cx,cy-30,80,130);
  ellipse(cx,cy-100,90,80);
 
  //eye white part
  fill(255,255,255);
  ellipse(cx+20,cy-100,30,30);
  ellipse(cx-20,cy-100,30,30);
  
  //eye pupils
  fill(0,0,0);
  ellipse(cx+20,cy-100,10,15);
  ellipse(cx-20,cy-100,10,15);
  
  //eye reflection/gleam
  noStroke();
  //stroke(255,255,255);
  fill(255,255,255);
  ellipse(222,95,7,7);
  ellipse(182,95,7,7);
  stroke(0,0,0);
  
  //beak
  noStroke();
  fill(255, 215, 9);
  ellipse(cx,cy-70,40,30);
  triangle(cx,cy-15,cx+20,cy-70,cx-20,cy-70);
  stroke(0,0,0);
  
  //legs & feet
  genObj(162,279,LegOffsetX, legWidth, 65,50);
  genObj(162,279,LegOffsetX, legWidth, 65-25,50);
  genObj(162,279,LegOffsetX, legWidth, 65-25-25,50);
  genObj(222,279,LegOffsetX, legWidth, 295,50);
  genObj(222,279,LegOffsetX, legWidth, 295+25,50);
  genObj(222,279,LegOffsetX, legWidth, 295+50,50);
  genObj(cHipX, cHipY - 5, LegOffsetX, legWidth, 315 + 20,55);
  genObj(cHipX, cHipY - 5, -LegOffsetX, legWidth, 45 - 20,55);
  
}

void getMP(){
  double mx = mouseX;
  double my = mouseY;
  System.out.println("X:"+mx+" Y:"+my);
}

void rotateObject(int x, int y, float angle){
  pushMatrix();
  translate(x,y);
  angle = angle * PI/180;
  rotate(angle);
}

void genObj(int cHipX, int cHipY, int LegOffsetX, int legWidth, int ang, int h){
  rotateObject(cHipX + LegOffsetX,cHipY, ang);
  rect(-legWidth/2,0,legWidth,h);
  popMatrix();
}

