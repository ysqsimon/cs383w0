/*
 * Interactive portrait (web version)
 * This uses P5.js, which is processing for JavaScript and
 * the web. The code and libraries are different.
 */

// must be same size as frames you saved in recorder
var frames = Array(30); 

// use preload since web file transfer is slower
function preload() {

  // load in the frames (in data subdir)
  for (var i = 0; i < frames.length; i++) {
    // frames are stored in 'data' subdir 
    // as 'frame-000.jog', 'frame-001.jpg', ...
    frames[i] = loadImage("data/frame-" + nf(i, 3) + ".jpg");
  }
}

function setup() {
  // this is also the size of frame that's saved
  createCanvas(256, 256);
}

function draw() {
  background(0);
  var i = floor(map(mouseX, 0, width - 1, 0, frames.length - 1)); 

  // need to constrain since mouseX is for whole page
  i = constrain(i, 0, frames.length - 1);

  image(frames[i], 0, 0);
}