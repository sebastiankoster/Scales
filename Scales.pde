void setup() {
  size(1000,1000);
  background(200,200,256);
  stroke(0,0,0);
  strokeWeight(2);
  frameRate(600);
}

int count = 0; //iterations for raindrop
float x = 0; //initial x value for first drop
float y = -20; //initial y value for all drops
int dropCycleNm = 0; //initialize lightning count
int strikeNumber = 0; //times lightning has struck
int totalDrops = 0;
float q = 0;

void draw() {
 drawScale();
}

void drawScale(){
 count++;
 int sx=0;
 float sy=2*count+0.01*0.5*9.81*pow(count,2); //y shift, note accelleration and initial velocity of 0
 if(sy+y>1000){ 
  x = 20+totalDrops*20;
  count = 0;
  dropCycleNm++;
  totalDrops++;
  y=-20;
  } 
 q=count/12.2+0.2*totalDrops; 
 if(q>10)
   q=10;
 fill(0.33*25.6*q+0.5*106*log(q),25.6*q,0.4*25.6*q);
 bezier(x+sx,y+sy,x-50+sx,y+55+sy,x+50+sx,y+55+sy,x+sx,y+sy); //draw raindrop
 count++;
 System.out.println(count);
 if (x>1000)
   noLoop();
   System.out.println(count); 
}
