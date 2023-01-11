import processing.video.*;

Movie zombilanga;

void setup() {
  fullScreen();
  zombilanga = new Movie(this, "video.mp4");
  zombilanga.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  if (zombilanga.available() == true) {
    zombilanga.read(); 
  }
  image(zombilanga, 0, 0, width, height);
}
