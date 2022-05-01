GameBoy gb = new GameBoy();

int x=2;
int y=0;

Enemy currentEnemy;

void setup() {
  size(285, 565);
  gb.begin(0);
  
  currentEnemy = gb.createEnemy((int)random(1, 3));
}

void draw() {
  gb.drawDisplay();
  
  playerCar(x);
  
  gb.displayEnemies();
  
  if (frameCount % 20 == 0){
    gb.moveEnemies();
  }
  
  if (currentEnemy.y  > 5){
    currentEnemy = gb.createEnemy((int)random(1, 3));
  }
  
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
