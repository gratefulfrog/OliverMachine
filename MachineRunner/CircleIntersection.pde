// circle intersection
// Correct!


float DD(Circle c1, Circle c2){
  // return the distance between the cricle centers
  // raise an exception if there is no intersection!
  float res = sqrt(sq(c2.x-c1.x) + sq(c2.y - c1.y));
  if (res > (c1.r + c2.r)){
    throw new RuntimeException("Arms have been torn apart!"); //Circles do not intersect!
  }
  else if (res < abs(c1.r -c2.r)){
    throw new RuntimeException("Arms cannot connect to the pen!"); //One circle is inside the other!
  }
  return res;
}

float Delta(Circle c1, Circle c2, float D){
  float p1 =  D + c1.r + c2.r ;
  float p2 =  D + c1.r - c2.r ;
  float p3 =  D - c1.r + c2.r ;
  float p4 =  -D + c1.r + c2.r ;;
  float res = sqrt(p1*p2*p3*p4)/4.0;
  return res;
}

float[] X(Circle c1, Circle c2, float D){
  float p1 = (c1.x +c2.x)/2.0;
  float p2 = ((c2.x-c1.x)*(sq(c1.r) - sq(c2.r)))/(2.0*sq(D));
  float p3 = 2.0*(c1.y-c2.y)*Delta(c1,c2,D)/sq(D);
  float xPlus = p1+p2+p3;
  float xMinus = p1+p2-p3;
  float[] res =  new float[2];
  res[0] = xPlus;
  res[1] = xMinus;
  return res;
}

float[] Y(Circle c1, Circle c2,float D){
  float p1 = (c1.y +c2.y)/2.0;
  float p2 = ((c2.y-c1.y)*(sq(c1.r) - sq(c2.r)))/(2.0*sq(D));
  float p3 = 2.0*(c1.x-c2.x)*Delta(c1,c2,D)/sq(D);
  float yPlus = p1+p2+p3;
  float yMinus = p1+p2-p3;
  float[] res =  new float[2];
  res[0] = yMinus;
  res[1] = yPlus;
  return res;
}

Point getIntersectPoint(Point pL, Point pR, float aL, float aR){
  Circle cL = new Circle(pL.x,pL.y,aL);
  Circle cR =  new Circle(pR.x,pR.y,aR);
  float D = 0;
  try {
    D = DD(cL,cR);
  } 
  catch (Exception e) {
    println(e.getMessage());
    exit();
  }
  float[] i1 = X(cL,cR,D),
          i2 = Y(cL,cR,D);
  float temp = i1[1];
  i1[1] = i2[0];
  i2[0] = temp;
  /*
  print("D: ");
  println(D);
  println("Point1:");
  println(i1);
  println("Point2:");
  println(i2);
  */
  Point res = new Point(0,0);
  if (i1[1]<i2[1]){
    res.x = i1[0];
    res.y = i1[1];
  }
  else{
    res.x = i2[0];
    res.y = i2[1];
  }
  return res;
}