float p1x, p1y, p1d;
float p2x, p2y, p2d;

boolean wkey, akey, skey, dkey, upkey, leftkey, downkey, rightkey;


void setup() {

  size(600, 600, P2D);

  p1x=50;
  p1y=height/2;
  p1d=100;

  p2x=width-50;
  p2y=height/2;
  p2d=100;
}

void draw() {

  strokeWeight(5);
  background(255);

  //player 1
  fill(0);
  circle(p1x, p1y, p1d);

  //player 1 movement
  if (wkey) p1y-=5;
  if (akey) p1x-=5;
  if (skey) p1y+=5;
  if (dkey) p1x+=5;

  //player 2
  fill(255);
  circle(p2x, p2y, p2d);


  //player 2 movement
  if (upkey) p2y-=5;
  if (leftkey) p2x-=5;
  if (downkey) p2y+=5;
  if (rightkey) p2x+=5;
}

void keyPressed() {

  if (key=='w') wkey=true;
  if (key=='a') akey=true;
  if (key=='s') skey=true;
  if (key=='d') dkey=true;

  if (keyCode == UP) upkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == RIGHT) rightkey = true;
}
void keyReleased() {

  if (key=='w') wkey=false;
  if (key=='a') akey=false;
  if (key=='s') skey=false;
  if (key=='d') dkey=false;

  if (keyCode == UP) upkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == RIGHT) rightkey = false;
}
