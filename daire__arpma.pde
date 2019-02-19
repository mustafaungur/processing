ArrayList <daire> daireler = new ArrayList<daire>();
ArrayList <kare> kareler = new ArrayList<kare>();

int id;
int ik;

int adetDaire=10;
int adetKare=10;

void setup() {
  size(400, 400); 
  for (int id=0; id<adetDaire; id++) {
    daireler.add(new daire());
  }

  //for (int ik=0; ik<adetKare; ik++) {
  //  kareler.add(new kare());
  //}
}

void draw() {

  background(255);
  for (int id= daireler.size()-1; id>0; id--)
  {
    daireler.get(id).hareket();
    daireler.get(id).carpma();
    daireler.get(id).olustur();

    daireler.get(id).IsMouseOver();
  }

  //for (int ik= kareler.size()-1; ik>0; ik--)
  //{
  //  kareler.get(ik).hareketk();
  //  kareler.get(ik).carpmak();
  //  kareler.get(ik).olusturk();
  //  kareler.get(ik).remove();

  //}
}
void mousePressed () {
  for (int i=daireler.size()-1; i>0; i--) 
  {
    if (daireler.get(i).IsMouseOver()) {
      println(i);
      daireler.remove(i);
    }
  }
}
void keyPressed () {
  //println(keyCode);
  //32 SPACEBAR
  //eğer ara çubuğuna basılırsa 1 tane daha diziye eleman ekle
  if (keyCode==32) {
    daireler.add(new daire());    
  }
}
