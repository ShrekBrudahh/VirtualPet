
//center pt
int cx = 200;
int cy = 200;

void setup(){
  size(400,400);
}

void draw(){
  int cHipX = 200;
  int cHipY = 235;
  fill(40,40,40);
  ellipse(cx,cy-30,80,130);
  ellipse(cx,cy-100,90,80);
  fill(255,255,255);
  ellipse(cx+20,cy-100,30,30);
  ellipse(cx-20,cy-100,30,30);
  noStroke();
  fill(0,0,0);
  ellipse(cx+20,cy-100,10,15);
  ellipse(cx-20,cy-100,10,15);
  noStroke();
  fill(255, 215, 9);
  ellipse(cx,cy-70,40,30);
  triangle(cx,cy-15,cx+20,cy-70,cx-20,cy-70);
  rotateObject(cHipX - 5,cHipY - 5, 90);
  rect(0,0,10,50);
  /*
  rotateObject(cHipX - 5,cHipY - 5, 315);
  rect(0,0,10,50);
  */
}

void getMP(){
  double mx = mouseX;
  double my = mouseY;
  System.out.println("X:"+mx+" Y:"+my);
}

void rotateObject(int x, int y, float angle){
  translate(x,y);
  angle = angle * PI/180;
  rotate(angle);
}

