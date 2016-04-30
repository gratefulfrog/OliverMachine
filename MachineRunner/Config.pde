// All user config data goes here!

// Small disk sizes
final float LeftRadius = 60;  // radius of left short arm in pixels
final float RightRadius = 60;  // radius of left short arm in pixels

// Radial Arm starting postion, in degrees, 0 degrees is due East, positive is clockwise
final float InitRight = 270, // right arm init
            InitLeft = 180;  // left arm init

// distance between the small disks (center to center) in pixels
final float SmallDiskDistance = 225;

// big wheel size
final float BigRadius = 80;  // radius of the wheel that is the canvas

// wheel speeds
final float LeftSpeed  = 2.1;   // Wheel rotational speeds in Degrees per frame (frameRate is set elsewhere to get a nice result!)
final float RightSpeed = 0.7;   // Wheel rotational speeds in Degrees per frame (frameRate is set elsewhere to get a nice result!)
final float BigSpeed   = 1; // Wheel rotational speeds in Degrees per frame (frameRate is set elsewhere to get a nice result!)

// pen holder arm lengths
final float LeftArmlength = 175;  // length of arm in pixels
final float RightArmlength = 175;  // length of arm in pixels

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
          
    // initial position of radius arms in degrees, 0 is due East
    float Ir = InitRight, // right arm init
          Il = InitLeft;  // left arm init
    
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
     // window spacing
     float winSpace = 100;

    Config(){};
}