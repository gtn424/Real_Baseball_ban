int r1 = 255;
int g1 = 255;
int b1 = 255;
int r2 = 255;
int g2 = 255;
int b2 = 255;
int tcolor = 0;
int color1p = 0;
int color2p = 0;
int weight1 = 3;
int weight2 = 1;


void gamestart() {
  stroke(0);
  strokeWeight(15);
  fill(255);
  line(960, 0, 960, 640);   

  noStroke();
  fill(0, 128, 0); // 背景
  rect(960, 0, 640, 200);
  fill(139, 69, 19);
  rect(960, 200, 640, 450);

  fill(255); // ホームベース
  rect(1205, 470, 150, 70);
  triangle(1205, 540, 1355, 540, 1280, 600);

  stroke(255);// 打席
  strokeWeight(10);
  fill(139, 69, 19);
  rect(1075, 470, 100, 150);
  rect(1385, 470, 100, 150);
  line(965, 320, 1150, 470);
  line(1595, 320, 1410, 470); 

  stroke(0);
  strokeWeight(1);
  fill(0, 206, 209);
  if (mouseX >= 1180 && mouseX <= 1380 && mouseY >= 300 && mouseY<= 400) {
    fill(32, 178, 170);
  }
  rect(1180, 300, 200, 100);
  fill(0);
  textSize(40);
  text("START", 1280, 365);

  textSize(70);
  text("BASEBALL", 1280, 225);
}

void mode()
{
  strokeWeight(15);
  fill(255);
  line(960, 0, 960, 640);   

  noStroke();
  fill(0, 128, 0); // 背景
  rect(960, 0, 640, 200);
  fill(139, 69, 19);
  rect(960, 200, 640, 450);

  stroke(0);
  strokeWeight(3);
  fill(255, 165, 0);
  rect(1115, 100, 320, 60);

  fill(0);
  textSize(30);
  text("キーボードで1～9イニングを選択", 1275, 75);
  textSize(40);
  text("イニング", 1335, 150);

  if (inningmax == 1)
  {
    fill(0);
    textSize(50);
    text("1", 1190, 150);
  }
  if (inningmax == 2)
  {
    fill(0);
    textSize(50);
    text("2", 1190, 150);
  }
  if (inningmax == 3)
  {
    fill(0);
    textSize(50);
    text("3", 1190, 150);
  }
  if (inningmax == 4)
  {
    fill(0);
    textSize(50);
    text("4", 1190, 150);
  }
  if (inningmax == 5)
  {
    fill(0);
    textSize(50);
    text("5", 1190, 150);
  }
  if (inningmax == 6)
  {
    fill(0);
    textSize(50);
    text("6", 1190, 150);
  }
  if (inningmax == 7)
  {
    fill(0);
    textSize(50);
    text("7", 1190, 150);
  }
  if (inningmax == 8)
  {
    fill(0);
    textSize(50);
    text("8", 1190, 150);
  }
  if (inningmax == 9)
  {
    fill(0);
    textSize(50);
    text("9", 1190, 150);
  }

  //////

  fill(r1, g1, b1);
  strokeWeight(weight1);
  rect(1100, 230, 100, 50);
  fill(r2, g2, b2);
  strokeWeight(weight2);
  rect(1350, 230, 100, 50);

  strokeWeight(1);
  fill(0, 255, 255);
  if (mouseX >= 1100 && mouseX <= 1240 && mouseY >= 400 && mouseY<= 470) {
    fill(64, 224, 208);
  }
  rect(1100, 400, 140, 70);
  fill(250, 128, 114);
  if (mouseX >= 1320 && mouseX <= 1460 && mouseY >= 400 && mouseY<= 470) { 
    fill(240, 128, 128);
  }
  rect(1320, 400, 140, 70);

  fill(255, 0, 0);
  rect(1005, 320, 50, 50);
  fill(0, 255, 0);
  rect(1105, 320, 50, 50);
  fill(0, 0, 255);
  rect(1205, 320, 50, 50);
  fill(255, 255, 0);
  rect(1305, 320, 50, 50);
  fill(255, 192, 203);
  rect(1405, 320, 50, 50);
  fill(128, 0, 128);
  rect(1505, 320, 50, 50);

  fill(0);
  textSize(30);
  text("マウスでチームカラーを選択", 1270, 210);
  text("1P", 1150, 265);
  text("2P", 1400, 265);
  text("1Pに戻る", 1170, 445);
  text("決定", 1390, 445);

  fill(255, 69, 0);
  if (inningmax<=9 && inningmax >= 1 && tcolor == 2 && mouseX >= 1180 && mouseX <= 1380 && mouseY >= 500 && mouseY<= 600) {
    fill(180, 50, 0); //色変え
  }

  rect(1180, 500, 200, 100);
  fill(0);
  textSize(40);
  text("BATTLE!!", 1280, 565);
}
