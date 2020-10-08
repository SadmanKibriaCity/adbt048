int row;
int col;
PImage img;

float textpos;
float textspeed;
String text;

void setup() {
  size(600,600);
  background(255);

  img = loadImage("College Building -PG prospectus.jpg");
  
  textSize(42);
  textpos = width;
  textspeed = -30;
    fill(255, 177, 8);
  text = "Welcome to City University of London!";
}


void draw() {    
  background(255);
for (row=0; row<7; row = row+1)
{
  for (col=0; col<7; col = col+1)
  {
      noStroke();
          delay(9);
      fill(random(255), random(255), random(255));
   ellipse(60+col*80 ,60+row*80, 65, 65);
  }
}

  textpos = textpos + textspeed;
  text(text, textpos, 120); 
  
  int alpha = round(mouseX*255 / width);
    fill(random(255), random(255), random(255), alpha);
    rect(0, 580, 600, 20);
    
  tint(alpha, alpha);
  image(img, 50, 140, 500, 300);
}
