class Circle{
  float r,
        x,
        y;
        
   Circle(float xx, float yy,float rr){
     x = xx;
     y = yy;
     r = rr;
   }
   Circle(Point p, float rr){
     x = p.x;
     y = p.y;
     r = rr;
   }
   void display(){
     stroke(#C4BCBC);
     ellipse(x,y, 2*r,2*r);
   }

    // circle intersection methods
    // Correct!


    float DD(Circle c2){
	// return the distance between the cricle centers
	// raise an exception if there is no intersection!
	float res = sqrt(sq(c2.x-x) + sq(c2.y - y));
	if (res > (r + c2.r)){
	    throw new RuntimeException("Arms have been torn apart!"); //Circles do not intersect!
	}
	else if (res < abs(r -c2.r)){
	    throw new RuntimeException("Arms cannot connect to the pen!"); //One circle is inside the other!
	}
	return res;
    }

    float Delta(Circle c2, float D){
	float p1 =  D + r + c2.r ;
	float p2 =  D + r - c2.r ;
	float p3 =  D - r + c2.r ;
	float p4 =  -D + r + c2.r ;;
	float res = sqrt(p1*p2*p3*p4)/4.0;
	return res;
    }

    float[] X(Circle c2, float D){
	float p1 = (x +c2.x)/2.0;
	float p2 = ((c2.x-x)*(sq(r) - sq(c2.r)))/(2.0*sq(D));
	float p3 = 2.0*(y-c2.y)*this.Delta(c2,D)/sq(D);
	float xPlus = p1+p2+p3;
	float xMinus = p1+p2-p3;
	float[] res =  new float[2];
	res[0] = xPlus;
	res[1] = xMinus;
	return res;
    }

    float[] Y(Circle c2,float D){
	float p1 = (y +c2.y)/2.0;
	float p2 = ((c2.y-y)*(sq(r) - sq(c2.r)))/(2.0*sq(D));
	float p3 = 2.0*(x-c2.x)*this.Delta(c2,D)/sq(D);
	float yPlus = p1+p2+p3;
	float yMinus = p1+p2-p3;
	float[] res =  new float[2];
	res[0] = yMinus;
	res[1] = yPlus;
	return res;
    }

    Point getIntersectPoint(Circle cR){
	float D = 0;
	try {
	    D = this.DD(cR);
	} 
	catch (Exception e) {
	    println(e.getMessage());
	    exit();
	}
	float[] i1 = this.X(cR,D),
	    i2 = this.Y(cR,D);
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
}