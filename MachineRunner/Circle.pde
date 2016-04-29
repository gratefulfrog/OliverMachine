class Circle{
  float r,
        x,
        y;
        
   Circle(float xx, float yy,float rr){
     x = xx;
     y = yy;
     r = rr;
   }
   void display(){
     stroke(#C4BCBC);
     ellipse(x,y, 2*r,2*r);
   }
}