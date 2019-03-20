// 20.03.2019 Mustafa ÜNGÜR 
// Analog Saat oluşturma programı 

float ra = 100;
float ry = 150;
float rs = 175;
float theta = 0;
int s=0;



void setup() {
  size(400,400);
  

}
void draw() {
  background(155);
  
  //saat kadranını çiz
  fill(255);
  ellipse(width/2,height/2,350,350);
  pushMatrix() ;
  translate(width/2,height/2);
  for(int i=0;i<360;i+=30) {
    theta = radians(i);
    float dx = 175 * cos(theta);
    float dy = 175 * sin(theta);
    fill(0);
    ellipse(dx,dy,30,30);
  }
  popMatrix();
  
  //akrep oluşturuldu
  theta = map(hour(),0,12,0,TWO_PI)-HALF_PI;   
  float c = ra * cos(theta);
  float d = ra * sin(theta);
  stroke(0,0,255);
  strokeWeight(5);
  line(width/2,height/2,c+width/2,d+height/2);
  
  //yelkovan oluşturuldu
  theta = map(minute(),0,60,0,TWO_PI)-HALF_PI;
  float a = ry* cos(theta);
  float b = ry* sin(theta);
  stroke(0,255,0);
  strokeWeight(3);
  line(width/2,height/2,a+width/2,b+height/2);
  
  //saniye oluşturuldu
  theta = map(second(),0,60,0,TWO_PI)-HALF_PI;
  float x = rs* cos(theta);
  float y = rs* sin(theta);
  stroke(255,0,0,100);
  strokeWeight(1);
  line(width/2,height/2,x+width/2,y+height/2);
  
  
   
}
