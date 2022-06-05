int x=2;
int y=0;

int speed = 20;
int score = 0;

int road_y = -3;

Enemy currentEnemy;
Enemy previousEnemy;

void setup() {
  size(285, 565);
  gb.begin(0);
  
  currentEnemy = gb.createEnemy((int)random(1, 3));
  previousEnemy = currentEnemy;
}

void draw() {
  gb.drawDisplay();
  
  playerCar(x);
  
  gb.displayEnemies();
  
  if (frameCount % speed == 0){
    gb.moveEnemies();
  }
  
  if (frameCount % 5 == 0){
    road_y++;
    
    if (road_y > 1){
      road_y = -3;  
    }
  }
  
  if (currentEnemy.y  > 5){
    previousEnemy = currentEnemy;
    currentEnemy = gb.createEnemy((int)random(1, 3));
    
    score++;
    if (speed > 1){ 
      speed--;
    }
  }
  
 if(previousEnemy.y + 3 > 11 && previousEnemy.y < 15 && previousEnemy.x == x){
   print("SCORE: " + score);
   exit();
 }
 
 roadDraw(road_y);
 roadDraw(road_y + 5);
 roadDraw(road_y + 10);
 roadDraw(road_y + 15);
  
}

void keyPressed(){
  if(gb.getKey() == 4){
    x = 2;
  }
  if(gb.getKey() == 5){
    x = 5;
  }
 
}


void roadDraw(int y){
  
  gb.drawPoint(0, y);
  gb.drawPoint(0, y + 1);
  gb.drawPoint(0, y + 2);
  
  gb.drawPoint(7, y);
  gb.drawPoint(7, y + 1);
  gb.drawPoint(7, y + 2);
  
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
