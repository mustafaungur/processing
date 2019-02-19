//14.02.2019
//Ömer ERMIS
// Mustafa asagidaki notlara dikkta et
// 1- girintilerin sorunlu
// 2- FONKSYON iSiMLERNDE TR KARAKTER KULLANILMAZ
// 3- xspeed ve yspeed degerleri rastgele olarak YAPICI fonksiyon icinde yaz, hareket blogu icinde degil
class daire {
  //float dx; float dy; float speedx; float speedy;
  PVector location;
  PVector hiz;
  PVector ivme;
  color renk;
  float cap;
  boolean IsMouseOver;
  boolean overdaire = false;
  
  daire() {
    // dx=newx;dy=newy;speedx=random(-5,5);speedy=random(-5,5);cap=random(20,50);
    location=new PVector(random(100, 300), random(100, 300));
    hiz=new PVector(1,1);
    ivme=new PVector( 0, 0);
    renk=color(random(0,255),random(0,255),random(0,255));
    cap=30;
  
  }   

  void hareket() { 
    hiz.add (ivme);
    location.add (hiz);
}
  boolean IsMouseOver() {
    float dx = abs(location.x-mouseX);
    float dy = abs(location.y-mouseY);
    float dist = sqrt(dx*dx+dy*dy);    
    if (dist<=cap) {      
     
      overdaire = true;
      return true;
      
    
    } else {
   
      overdaire = false;
      return false;
    }
  }
  
  void olustur() {
    if (overdaire) {
      fill(renk);
    } else {
      fill(0);
    }
    
    ellipse(location.x, location.y, cap, cap);
    noFill();
  }

  void carpma() {
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
