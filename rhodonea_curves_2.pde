float r = 100;
float petallen;
int resolution = 100;
float theta;
float x;
float y;
float k;
float n = 9;
float d = 2;
float c = 0;
float cFac;


void setup (){
  size(600,600);
  k = n / d;
  
}

void draw() {
  background(0);
  pushMatrix();
  translate(width*0.5,height*0.5);
  //fill(255);
fill(#E03320);
  stroke(255);
  
  cFac = cFac + 0.01;
  
  c= map(cFac,0,2,0,1);
  
  if(cFac > 2) {
    
    cFac=0;
  }
  
  
  beginShape();
  for(int i = 0; i < resolution*d; i++) {
    
    theta = map(i*millis()*0.006,0,resolution,0,TWO_PI);
    
    petallen = cos(k*theta) + c;
    x = r * petallen * cos(theta);
    y = r * petallen * sin(theta);
    point(x,y);
    vertex(x,y);
  }
  endShape(CLOSE);
  popMatrix();
  }