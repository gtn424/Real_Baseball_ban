void normal_ground() { // グラウンド
  noStroke();
  fill(0);
  rect(0, 960, 960, 640);
  fill(255, 255, 0);
  rect(0, 45, 960, 5); //ホームランライン
  fill(0, 121, 0);
  rect(0, 50, 960, 50); //フェンス
  fill(0, 200, 0);
  rect(0, 100, 960, 300); //外野
  fill(122, 50, 0);
  ellipse(500, 690, 1400, 1100); //内野
}

void normal_batterbox() { //バッターズボックス
  stroke(255);
  strokeWeight(5);
  /*-右打者-*/
  line(400, 520, 250, 520);
  line(250, 520, 250, 650);
  line(250, 650, 400, 650);
  line(400, 650, 400, 520);

  /*--左打者--*/
  line(560, 520, 710, 520);
  line(710, 520, 710, 650);
  line(710, 650, 560, 650);
  line(560, 650, 560, 520);

  /*--ホームベース--*/
  fill(255);
  noStroke();
  rect(420, 550, 120, 40);
  triangle(420, 590, 540, 590, 480, 620);

  /*--フェアゾーン--*/
  stroke(255);
  strokeWeight(5);
  line(370, 520, -5, 400);
  line(590, 520, 965, 400);
}

void normal_ball() {
  noStroke();
  fill(255);
  ellipse(x, y, sx, sy);
  if (pitching_set && pitch==false) {
    y+=1;
    if (y>=200) {
      y=200;
    }
  }
}

void strikezone() {
  noFill();
  stroke(0);
  strokeWeight(1);
  rect(420, 410, 120, 110);
}

void pitcher() {
  fill(0);
  ellipse(440, 125, 20, 25);
  ellipse(520, 125, 20, 25);
  ellipse(440, 225, 20, 25);
  ellipse(520, 225, 20, 25);
  fill(0, 0, 255);
  rect(440, 125, 80, 100);
  fill(0, 0, 200);
  rect(475, 165, 10, 60);
  fill(255);

  fill(255, 255, 204);
  ellipse(458, 200, 35, 35);
  ellipse(504, 200, 35, 35);
  fill(255);
  ellipse(458, 200, 25, 25);
  ellipse(504, 200, 25, 25);
  fill(150, 150, 150);
  ellipse(458, 200, 5, 5);
  ellipse(504, 200, 5, 5);
}

void right_batter(int r, int g, int b, int x, int y) {
    fill(r, g, b);
    rect(x + 10, y + 40, 60, 30);
    rect(x + 10, y + 75, 60, 30);
   
    fill(255);
    ellipse(x, y, 60, 60);
    ellipse(x + 85, y + 55, 30, 30);
    ellipse(x + 85, y + 90, 30, 30);
    fill(0);
    line(x - 30, y - 6, x + 50, y - 6);
    fill(r, g, b);
    arc(x, y - 6, 60, 60, radians(180), radians(360));
    arc(x, y + 180, 100, 300, radians(180), radians(360));
}

void powerbat(int x, int y)
{
    fill(192, 192, 192);
    rect(x + 70, y - 60, 30, 90);
    triangle(x + 70, y + 30, x + 100, y + 30, x + 85, y + 130);
    rect(x + 75, y + 80, 20, 50);
    rect(x + 70, y + 110, 30, 20);
    arc(x + 85, y - 60, 30, 30, radians(180), radians(360));
}

void human(int r, int g, int b, int x, int y) {
    fill(255);
    ellipse(x, y, 40, 40);
    fill(0);
    line(x - 40, y - 6, x + 20, y - 6);
    line(x - 15, y - 6, x - 5, y);
    line(x + 5, y, x + 15, y - 6);
    line(x - 10, y - 3, x - 10, y + 5);
    line(x + 10, y - 3, x + 10, y + 5);
    fill(r, g, b);
    arc(x, y - 6, 40, 40, radians(180), radians(360));
    arc(x, y + 80, 60, 120, radians(180), radians(360));
}


void right_swing_batter(int r, int g, int b, int x, int y) {
    fill(r, g, b);
    rect(x -  70, y + 40, 60, 30);
    rect(x -70, y + 75, 60, 30);
   
    fill(255);
    ellipse(x, y, 60, 60);
    ellipse(x - 76, y + 55, 30, 30);
    ellipse(x - 76, y + 90, 30, 30);
    fill(0);
    line(x - 30, y - 6, x + 50, y - 6);
    fill(r, g, b);
    arc(x, y - 6, 60, 60, radians(180), radians(360));
    arc(x, y + 180, 100, 300, radians(180), radians(360));
}

void bat_cursor()
{

  int a = 420;
  int b = 410;
  fill(204, 255, 255, 0);
  strokeWeight(1);
  rect(a, b, 120, 110);
  if ((mouseX >= a) &&(a+120 >= mouseX) && (mouseY >= b) && (mouseY <= b+110)  )
  {
    noFill();
    stroke(0);
    rect(mouseX-25, mouseY-10, 50, 20);
  }
}
