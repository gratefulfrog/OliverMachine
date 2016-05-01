// All user config data goes here!

// Small disk sizes
final float LeftRadius = 60;  // radius of left short arm in pixels
final float RightRadius = 60;  // radius of left short arm in pixels

// Radial Arm starting postion, in degrees, 0 degrees is due East, positive is counter clockwise
final float InitRight = 90, // right arm init
            InitLeft = -90;  // left arm init

// distance between the small disks (center to center) in pixels
final float SmallDiskDistance = 340;

// big wheel size
final float BigRadius = 150;  // radius of the wheel that is the canvas

// wheel speeds
final float LeftSpeed  = 1;   // Wheel rotational speeds in Degrees per frame (frameRate is set elsewhere to get a nice result!)
final float RightSpeed = 7;   // Wheel rotational speeds in Degrees per frame (frameRate is set elsewhere to get a nice result!)
final float BigSpeed   = 1.3; // Wheel rotational speeds in Degrees per frame (frameRate is set elsewhere to get a nice result!)

// pen holder arm lengths
final float LeftArmlength = 160;  // length of arm in pixels
final float RightArmlength = 295;  // length of arm in pixels

// pen color
final color PenColor = #F50C2F;  // RGB value of the pen color

// simulation speed
final float SimSpeed = 100;  // simulation speed in Frames Per Second, Note: the software will do its best to get that speed, but may fail!

// image directory, where the saved images will go! Don't forget the slash at the end!
final String imageDir = "/home/bob/MiscProjects/OliverMachine/Images/";
final boolean saveImages = true; // false;  // set to true to durn on image saving

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
    // image dir
    String imDir = imageDir; 
    boolean saveIms = saveImages;
    
    Config(){};
}