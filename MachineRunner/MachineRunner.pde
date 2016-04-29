// MachineRunner01.pde

final Config conf = new Config();

// window size
int mWidth  = round(conf.D + conf.Rl + conf.Rr + 2*conf.winSpace),
    mHeight = round(2*conf.winSpace + max(conf.Rl,conf.Rr) + 2*conf.Ra); 
    
void settings() {
  size(mWidth,mHeight);
}

App app;

void setup() {
  frameRate(conf.FR);  // nb steps per second
  background(conf.bg); 
  stroke(0);  // black lines
  app =  new App(conf,mHeight);
}

void draw() {
    app.draw();
}

void mouseClicked() {
    app.pause();
}
void keyPressed() {
    app.pause();
}
  