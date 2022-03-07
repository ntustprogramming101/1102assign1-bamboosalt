PImage backgroundImg;
PImage soilImg;
PImage lifeImg;
PImage hogImg;
PImage soldierImg;
PImage robotImg;
int x,y,g,z,s,d,w,Z,robotX,lightA_X,lightA_Y,lightA_X1;
int speedX,linelenght;


void setup() {
	size(640, 480);
   backgroundImg=loadImage("img/bg.jpg");
   soilImg=loadImage("img/soil.png");
   lifeImg=loadImage("img/life.png");
   hogImg=loadImage("img/groundhog.png");
   soldierImg=loadImage("img/soldier.png");
   robotImg=loadImage("img/robot.png");
   
   x=0;
   y=160;
   g=floor(random(1,3));
   s=floor(random(0,5));
   d=floor(random(0,3));
   w=29;
   speedX=floor(random(-1,-3));
   
   robotX=185+80*s;
   lightA_X=210+80*s;
   lightA_Y=195+80*d;
   lightA_X1=lightA_X;
   
}

void draw() {
  image(backgroundImg,0,0);
  
  image(soilImg,0,160);
  
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  
  //green
  noStroke();
  fill(124,204,25);
   rect(0,145,640,15);
  
  image(hogImg,280,80);
  
  //sun
  fill(255,255,0);
   circle(590,50,130);
  
  fill(253,184,19);
   circle(590,50,120);
   
  //soldier
  image(soldierImg,x,y+80*g);
  x+=4;
  if(x>=640){x=-80;}
  x%=640;
  
  //light
  
  strokeWeight(10);
   stroke(256,0,0);
   line(lightA_X,lightA_Y,lightA_X+linelenght,lightA_Y);
 
 if( linelenght>=-40){
   linelenght-=2;
 }
 
  if(lightA_X<=lightA_X1-160){
 lightA_X+=160;
  linelenght=0;
}else{
  lightA_X-=2;
}

  //robot
  image(robotImg,robotX,160+80*d);
 
}
