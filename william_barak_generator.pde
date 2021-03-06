PImage source;
PImage destination;

void setup() {
  size(500, 500);
  source = loadImage("sourceImage.jpg");
  destination = createImage(source.width, source.height, RGB);
}

void draw() {
  
  float threshold = 110;
  source.loadPixels();
  destination.loadPixels();

  for (int x = 0; x < source.width; x++) {
    for (int y = 0; y < source.height; y++ ) {
      int loc = x + y*source.width;
      // Test the brightness against the threshold
      if (brightness(source.pixels[loc]) > threshold) {
        destination.pixels[loc]  = color(255);  // White
      } else {
        destination.pixels[loc]  = color(0);    // Black
      }
    }
  }

  // We changed the pixels in destination
  destination.updatePixels();
  // Display the destination
  image(destination, 0, 0);
}