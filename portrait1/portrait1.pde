/*
 * Interactive portrait1: mouse triggers frames
 *  - move mouse horizontally to display corresponding frame
 */

// load frames you saved in recorder
// (add more arrays for multiple sets of frames recorded to different folders)
PImage[] frames;

void setup() {
  // this is also the size of frame that's saved
  size(256, 256); 

  // load frames (default is 30 frames in recorder data folder)
  frames = loadFrames("../recorder/data2/", 30);
}

void draw() {
  // transform mouseX position into frame index
  int i = floor(map(mouseX, 0, width - 1, 0, frames.length - 1));

  image(frames[i], 0, 0);
  beginShape();
  fill(0);
  vertex(0,0);
  vertex(256,0);
  vertex(256,256);
  vertex(0,256);
  beginContour();
  vertex(mouseX,mouseY-70);
  vertex(mouseX-70,mouseY-70);
  vertex(mouseX-70,mouseY+70);
  vertex(mouseX+70,mouseY+70);
  vertex(mouseX+70,mouseY-70);
  endContour();
  endShape();
  

  // for making gif animations ...
  if (saveGif) {
    gifExport.setDelay(1);
    gifExport.addFrame();
  }
}

// load in the frames
// filename is 'frame-000.jpg', 'frame-001.jpg', ...
PImage[] loadFrames(String path, int n) {

  PImage[] f = new PImage[n];

  for (int i = 0; i < n; i++) {
    f[i] = loadImage(path + "frame-" + nf(i, 3) + ".jpg");
  } 
  return f;
}


// for making gifs

// https://github.com/01010101/GifAnimation
import gifAnimation.*; 
GifMaker gifExport;

boolean saveGif = false;

void keyPressed() {
  if (gifExport == null && !saveGif) {
    gifExport = new GifMaker(this, "me.gif");
    gifExport.setRepeat(0);
    saveGif = true;
    println("Start gif export");
  } else if (saveGif) {
    gifExport.finish();  
    saveGif = false;
    println("End gif export");
  }
}