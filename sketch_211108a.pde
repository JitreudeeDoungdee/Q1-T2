void setup(){
  size(500,500);
  background(200);
}
float speed = 2;
float Drop = 0;
boolean Die = false;
float RandX = 250;
void draw(){
  background(200);
  float poX= mouseX,poY=mouseY;
  fill(255);
  ellipse(poX,poY,50,50);
  food();
}
void food(){
  if(Drop<height-10 || Die == true){
    if(Die == true){
      Drop = -50;
      RandX = random(500);
    }
    Die = false;
    Drop += speed;
    fill(255);
    ellipse(RandX,Drop,20,20);
  }
  else
  {
    Die = true;
    background(200);  
  }
}
