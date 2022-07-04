/*--All component--*/
int game=0;

/*--Normal visual--*/
int count, swing_count, count_a, count_b, strikecount, ballcount, outcount, inningcount, rightkey, leftkey, butterscore, inningmax, course, course_set,turntextcount;
int [][] scorecount;
float x, y, sx, sy, sizea, hitsize,turn_x;
boolean hit, pitch, strike, judgetext, buttingfirst, hittingballjudge, swing, pitching_set;
boolean [] runnercount;

/*--Hitting judge visual--*/
float ix, iy, ox, oy, bx, by, sbx, sby, bs, mx, my, temp_x, temp_y, g, x_g, y_g, b_spdx, b_spdy, boundborder, secondbounce, temp_speedx, temp_speedy, hittingtexttime, fensetempx, fensetempy, result0, result1;
float audience_left, audience_right, fense_left, fense_right, audience_leftx, audience_rightx, fense_leftx, fense_rightx, balljudge_y,balljudge_x;
int bounce=0, prev=0, judgecount=0, fensebounce1=0;
float [][] hit1x, hit2x, hit3x, d_outx, hit1y, hit2y, hit3y, d_outy, f_gx, f_gy, a_fx, a_fy, single_a, double_a, triple_a, d_out_a, single_x, double_x, triple_x, d_out_x, single_y, double_y, triple_y, d_out_y;
float [] fense_a, audience_a, fair_linex, fair_liney, fair_linea;
boolean bound, left, homerun, doubleplay, hittingjudge, golo, hittingjudgetext, fair, fensebounce, hit_judge;

/*----setup draw----*/
void setup() {
  size(1600, 640);
  PFont font = createFont("Meiryo", 50);
  textFont(font);
  swing_count=0;
  /*-----------------Normal visual-----------------*/
  turn_x=0;
  turntextcount=0;
  count=0;
  count_a=0;
  count_b=0;
  strikecount=0;
  ballcount=0;
  outcount=0;
  inningcount=1;
  inningmax=9;
  butterscore=5;                 //バッターは何塁打打ったのか
  scorecount = new int [2][inningmax+1];      //チームの得点数
  for (int i=0; i<2; i++) {
    for (int s=0; s<inningmax; s++) {
      scorecount[i][s]=0;
    }
  }

  runnercount = new boolean [4]; //その塁にランナーがいるのか
  for (int i=0; i<4; i++) {
    runnercount[i]=false;
  }

  rightkey=0;
  leftkey=0;
  smooth();
  x=481;
  y=180;
  sx=10;
  sy=10;

  hit=false;
  pitch=false;
  strike=false;
  swing=false;
  judgetext=false;
  buttingfirst=true;
  fensebounce=false;
  hit_judge=false;
  pitching_set=false;

  /*-----------------Hitting judge-----------------*/
  ix=0;
  iy=0;
  ox=0;
  oy=0; //内外野の座標変量
  sbx=480;
  sby=550;
  bs=10;//ボールの座標変量
  bx=sbx;
  by=sby-2;
  swing_count=0;
  g=0.008;
  boundborder=-29;
  secondbounce=-8;

  hittingtexttime=0;
  hittingballjudge=false;
  hittingjudge=false;
  hittingjudgetext=false;
  golo=false;
  bound = true;
  left=false;
  homerun=false;
  doubleplay=false;

  hit1x = new float [8][4]; //左から枠数、x座標
  hit2x = new float [8][4]; //左から枠数、x座標
  hit3x = new float [8][4]; //左から枠数、x座標
  d_outx = new float [8][4]; //左から枠数、x座標
  hit1y = new float [8][4]; //左から枠数、y座標
  hit2y = new float [8][4]; //左から枠数、y座標
  hit3y = new float [8][4]; //左から枠数、y座標
  d_outy = new float [8][4]; //左から枠数、y座標

  single_x = new float [8][4]; //左から枠数、x座標
  double_x = new float [8][4]; //左から枠数、x座標
  triple_x = new float [8][4]; //左から枠数、x座標
  d_out_x = new float [8][4]; //左から枠数、x座標
  single_y = new float [8][4]; //左から枠数、y座標
  double_y = new float [8][4]; //左から枠数、y座標
  triple_y = new float [8][4]; //左から枠数、y座標
  d_out_y = new float [8][4]; //左から枠数、y座標
  single_a = new float [8][4]; //左から枠数、y座標
  double_a = new float [8][4]; //左から枠数、y座標
  triple_a = new float [8][4]; //左から枠数、y座標
  d_out_a = new float [8][4]; //左から枠数、y座標

  f_gx = new float[3][4];
  f_gy = new float[3][4];
  a_fx = new float[3][4];
  a_fy= new float[3][4];
  fense_a = new float[3];
  audience_a = new float[3];
  fair_linex = new float[4];
  fair_liney = new float[4];
  fair_linea = new float[2];
  temp_x=0;
  temp_y=0;
  textAlign(CENTER);
  smooth();
}

void draw() {
  background(255);
  allcomponent();
}

void keyPressed() {
  if (game==1) {
    if (key == '1')
    {
      inningmax = 1;
    }
    if (key == '2')
    {
      inningmax = 2;
    }
    if (key == '3')
    {
      inningmax = 3;
    }
    if (key == '4')
    {
      inningmax = 4;
    }
    if (key == '5')
    {
      inningmax = 5;
    }
    if (key == '6')
    {
      inningmax = 6;
    }
    if (key == '7')
    {
      inningmax = 7;
    }
    if (key == '8')
    {
      inningmax = 8;
    }
    if (key == '9')
    {
      inningmax = 9;
    }
  }
  if (game==2) {
    if (key==ENTER) {
      if (hittingballjudge==false && pitching_set) {
        pitch=true;
      }
    }

    if (key == CODED) { //コース選択
      if (keyCode==RIGHT) {
        course++;
        println(course);
      }
      if (keyCode==LEFT) {
        course--;
        println(course);
      }
    }

    if (key==' ') {
      course_set=course;
      pitching_set=true;
    }

    if (key=='q') {
      hittingballjudge=false;
      allreset();
    }

    if (key=='h') {
      homerun=true;
    }
  }
}

void mousePressed() {
  if (game == 0) {
    if (mouseX >= 1180 && mouseX <= 1380 && mouseY >= 300 && mouseY<= 400) {
      game = 1;
    }
  } else if (game == 1) {
    if (mouseX >= 1005 && mouseX <= 1055 && mouseY >= 320 && mouseY<= 370) { //赤
      if (tcolor == 0) {
        r1 = 255;
        g1 = 0;
        b1 = 0;
        color1p = 1;
      } else if (tcolor == 1) {
        r2 = 255;
        g2 = 0;
        b2 = 0;
        color2p = 1;
      }
    }
    if (mouseX >= 1105 && mouseX <= 1155 && mouseY >= 320 && mouseY<= 370) { //緑
      if (tcolor == 0) {
        r1 = 0;
        g1 = 255;
        b1 = 0;
        color1p = 1;
      } else if (tcolor == 1) {
        r2 = 0;
        g2 = 255;
        b2 = 0;
        color2p = 1;
      }
    }
    if (mouseX >= 1205 && mouseX <= 1255 && mouseY >= 320 && mouseY<= 370) { //青
      if (tcolor == 0) {
        r1 = 0;
        g1 = 0;
        b1 = 255;
        color1p = 1;
      } else if (tcolor == 1) {
        r2 = 0;
        g2 = 0;
        b2 = 255;
        color2p = 1;
      }
    }
    if (mouseX >= 1305 && mouseX <= 1355 && mouseY >= 320 && mouseY<= 370) { //黄
      if (tcolor == 0) {
        r1 = 255;
        g1 = 255;
        b1 = 0;
        color1p = 1;
      } else if (tcolor == 1) {
        r2 = 255;
        g2 = 255;
        b2 = 0;
        color2p = 1;
      }
    }
    if (mouseX >= 1405 && mouseX <= 1455 && mouseY >= 320 && mouseY<= 370) { //ピンク
      if (tcolor == 0) {
        r1 = 255;
        g1 = 192;
        b1 = 203;
        color1p = 1;
      } else if (tcolor == 1) {
        r2 = 255;
        g2 = 192;
        b2 = 203;
        color2p = 1;
      }
    }
    if (mouseX >= 1505 && mouseX <= 1555 && mouseY >= 320 && mouseY<= 370) { //紫
      if (tcolor == 0) {
        r1 = 128;
        g1 = 0;
        b1 = 128;
        color1p = 1;
      } else if (tcolor == 1) {
        r2 = 128;
        g2 = 0;
        b2 = 128;
        color2p = 1;
      }
    }
    if (mouseX >= 1320 && mouseX <= 1460 && mouseY >= 400 && mouseY<= 470) { //決定
      if (tcolor == 0 && color1p == 1) {
        tcolor = 1;
        weight1 = 1;
        weight2 = 3;
      } else if (tcolor == 1 && color2p == 1) {
        tcolor = 2;
        weight2 = 1;
      }
    }
    if (mouseX >= 1100 && mouseX <= 1240 && mouseY >= 400 && mouseY<= 470) { //1Pに戻る
      tcolor = 0;
      weight1 = 3;
      weight2 = 1;
    }
    if (inningmax<=9 && inningmax >= 1 && tcolor == 2 && mouseX >= 1180 && mouseX <= 1380 && mouseY >= 500 && mouseY<= 600) {
      game = 2;
    }
  } 
  if (game==2) {
    if (pitch) {
      swing=true;
      swing_count++;
    }
  }
  if (game == 3) {
    if (mouseX >= 1250 && mouseX <= 1550 && mouseY >= 560 && mouseY <= 610) {
      inningmax = 0;
      r1 = 255;
      g1 = 255;
      b1 = 255;
      r2 = 255;
      g2 = 255;
      b2 = 255;
      tcolor = 0;
      color1p = 0;
      color2p = 0;
      weight1 = 3;
      weight2 = 1;
      game = 0;
      final_allreset();
    }
  }
}
