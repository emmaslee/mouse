color black  = #000000;
color white  = #ffffff;
color brown  = #bc6c25;
color lbrown = #dda15e;
color cream  = #fefae0;
color dgreen = #283618;
color green  = #606C38;
color bkg    = cream;
 
 void setup() {
   size(800, 600);
   strokeWeight(8);
 }
 
 void draw() {
background(bkg);

tactileRect(100, 100, 200, 100, brown);
tactileRect(300, 300, 200, 100, dgreen);




fill(brown);
if (mouseTouchingRect(100, 100, 200, 100 ) ) {
  stroke(white);
} else {
  stroke(black);
}
rect(100, 100, 200, 100);



fill(green);
if(mouseTouchingCircle(400, 150, 50) )  {
  stroke(white);
} else {
  stroke(black);
}
circle(400, 150, 100);

 }
 
 void mousePressed() {
   if (mouseTouchingRect(100, 100, 200, 100) ) {
     bkg = brown;
   }
   if (dist(400, 150, mouseX, mouseY) < 50) {
     bkg = green;
   }
 }
 
 boolean mouseTouchingRect(int x, int y, int w, int h) {
   if (mouseY > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
   return true;
 } else {
   return false;
 }
 }
 
 boolean mouseTouchingCircle(int x, int y, int r) {
   if(dist(x, y, mouseX, mouseY) < r)  {
     return true;
   } else {
     return false;
 }
 }
 
 void tactileRect(int x, int y, int w, int h, color f) {
  fill(brown);
if (mouseTouchingRect(x, y, w, h ) ) {
  stroke(white);
} else {
  stroke(black);
}
rect(x, y, w, h); 
 }
