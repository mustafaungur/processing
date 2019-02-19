class kare {
  //float kx; float ky; float speedkx; float speedky;
  PVector location;
  PVector hiz;
  PVector ivme;
  float capk;
  color renk;
  

  kare() {
    //kx = newkx; ky = newky; speedkx = random(-5, 5); speedky = random(-5, 5); capk=random(20, 50);
    location=new PVector(random(100, 300), random(100, 300));
    hiz=new PVector(random(-3, 3), random(-3, 3));
    ivme=new PVector(random(-0.5, 0.5), random(-0.5, 0.5));
    renk=color(random(0, 255), random(0, 255), random(0, 255));
    capk=20;
  }
  void hareketk() {
    hiz.add (ivme);
    location.add (hiz);
  }
  void olusturk() {
    fill(renk);
    rect(location.x, location.y, capk, capk);
    noFill();
    fill(0);
  } 

  void carpmak() {
    if (location.x<0) {
      hiz.x = hiz.x*-1;
    }
    if (location.x>width) {
      hiz.x = hiz.x*-1;
    }
    if (location.y<0) {
      hiz.y = hiz.y*-1;
    }
    if (location.y>height) {
      hiz.y = hiz.y*-1;
    }
  }
  void remove() {
    if (location.x<0) {
      return;
    }
    if (location.x>width) {
      return;
    }
    if (location.y<0) {
      return;
    }
    if (location.y>height) {
      return;
    }
}
  
}
