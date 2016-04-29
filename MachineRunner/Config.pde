// All user config data goes here!

// Small disk sizes
final float LeftRadius = 50;  // radius of left short arm in pixels
final float RightRadius = 40;  // radius of left short arm in pixels

// distance between the small disks (center to center) in pixels
final float SmallDiskDistance = 200;

// big wheel size
final float BigRadius = 80;  // radius of the wheel that is the canvas

// wheel speeds
final float LeftSpeed  = 1;   // Wheel rotational speeds in Degrees per frame (frameRate is set elsewhere to get a nice result!)
final float RightSpeed = 2;   // Wheel rotational speeds in Degrees per frame (frameRate is set elsewhere to get a nice result!)
final float BigSpeed   = 0.1; // Wheel rotational speeds in Degrees per frame (frameRate is set elsewhere to get a nice result!)

// pen holder arm lengths
final float LeftArmlength = 157;  // length of arm in pixels
final float RightArmlength = 165;  // length of arm in pixels

// pen color
final color PenColor = #F50C2F;  // RGB value of the pen color

// simulation speed
final float SimSpeed = 100;  // simulation speed in Frames Per Second, Note: the software will do its best to get that speed, but may fail!

////////////////////////////
// end of User Config Data
///////////////////////////

class Config {
     // frames per second
    float FR = SimSpeed;
    
    // Distance between centers of small wheels
    float D = SmallDiskDistance;
    
    // Radii of small wheels
    float Rl = LeftRadius, // left wheel radius
          Rr = RightRadius; // right wheel radius
    
    // Radius of Big Wheel
    float Ra = BigRadius;
    
    // Pen Holder Arm lengths
    float Al = LeftArmlength, // left arm length
          Ar =  RightArmlength; // right arm length
    
    // Wheel rotational speeds in Degrees per frame (frameRate is set elsewhere to get a nice result!)
    float Va =  BigSpeed,  // big wheel speed
          Vl = LeftSpeed,    // left wheel speed
          Vr = RightSpeed;    // right wheel speed
    // colors
    color penColor = PenColor,
          smallArmColor = #B0BAC6,
          longArmColor = #DDD0E8,
          baseLineColor = #D7EADD,
          bg = #0F0606;

    Config(){};
}