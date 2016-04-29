// MachineRunner01.pde

final Config conf = new Config();

boolean pause = false;

// window size
int mWidth = 4 * round(conf.D),
    mHeight = round(2 * max(conf.Al,conf.Ar) + max(conf.Rl,conf.Rr));

void settings() {
  size(mWidth,mHeight);
}

App app;

void setup() {
  frameRate(conf.FR);  // nb steps per second
  background(conf.bg); 
  stroke(0);  // black lines
  app =  new App(conf,mWidth,mHeight);
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
  
