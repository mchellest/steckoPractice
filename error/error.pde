PImage errmsg;
PImage desktop;
float x;
float y;
float xSpeed;
float ySpeed;

void setup(){
  size(displayWidth,displayHeight);
  //background(255);
  
  imageMode(CENTER);
  rectMode(CENTER);
  errmsg = loadImage("errmsg_img.png"); // assign img file to errmsg
  desktop = loadImage("desktop.PNG");
  image(desktop, width/2, height/2, 1920, 1080);
  
  frameRate(10);
  xSpeed = 5;
  ySpeed = 5;

  x = width/2;
  y = height/2;
}

void draw(){
  
  noCursor();
  x+=xSpeed;
  y+=ySpeed;
  
  stroke(0);
  noFill();
  rect(x, y, 255, 125); // rect for thin black border around the image
  image(errmsg, x, y, 253, 124);
  //image(errmsg, width/2, height/2, 253, 124);
  
  if(x >= width-50 || x < 50){
    xSpeed = -xSpeed;
  }
  if(y >= height-50 || y < 50){
    ySpeed = -ySpeed;
  }
  
}
