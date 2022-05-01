GameBoy gb = new GameBoy();
int x=2;
int y=0;
void setup() {
  size(285, 565);
  gb.begin(0);
}

void draw() {
  gb.drawDisplay();
  
  playerCar(x);
}

void keyPressed(){
  if(gb.getKey() == 4){
    x--;
  }
  if(gb.getKey() == 5){
    x++;
  }
}


void playerCar(int x){
    gb.drawPoint(x, 11);
    gb.drawPoint(x, 12);
    gb.drawPoint(x + 1, 12);
    gb.drawPoint(x - 1, 12);
    gb.drawPoint(x, 13);
    gb.drawPoint(x + 1, 14);
    gb.drawPoint(x - 1, 14);
}
