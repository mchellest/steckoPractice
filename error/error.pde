PImage errmsg;
float xSpeed;
float ySpeed;

void setup(){
  size(600,500);
  background(255);
  imageMode(CENTER);
  rectMode(CENTER);
  errmsg = loadImage("errmsg_img.png"); // assign img file to errmsg
  
  frameRate(10);
  xSpeed = width/2; // start these in the center of the screen
  ySpeed = height/2;
}

void draw(){
  stroke(0);
  noFill();
  rect(xSpeed, ySpeed, 255, 125); // rect for thin black border around the image
  image(errmsg, xSpeed, ySpeed, 253, 124);
  //image(errmsg, width/2, height/2, 253, 124);
  
  if(xSpeed >= width-100){
    xSpeed = -xSpeed;
  }
  if(ySpeed >= height-100){
    ySpeed = -ySpeed;
  }
  
  xSpeed+=5;
  ySpeed+=5;
  
}
