class Enemy {
  int x;
  int y;
  
  Enemy (int outX, int outY) {
    this.x = outX;
    this.y = outY;
  }
  
  void drawEnemy() {
    gb.drawPoint(x, y);
    gb.drawPoint(x, y + 1);
    gb.drawPoint(x + 1, y + 1);
    gb.drawPoint(x - 1, y + 1);
    gb.drawPoint(x, y + 2);
    gb.drawPoint(x + 1, y + 3);
    gb.drawPoint(x - 1, y + 3);
  }
  
  void moveEnemy() {
    this.y++;
  }
}
