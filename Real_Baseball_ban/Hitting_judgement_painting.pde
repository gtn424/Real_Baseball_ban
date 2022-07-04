void simplehit() {
  //各頂点の設定は左上から時計回り
  noStroke();
  //センター後ろ
  fill(255, 255, 0);
  hit1x[0][0]=ix+280;
  hit1y[0][0]=iy+-400;
  hit1x[0][1]=ix+680;
  hit1y[0][1]=iy+-400;
  hit1x[0][2]=ix+680;
  hit1y[0][2]=iy+-250;
  hit1x[0][3]=ix+280;
  hit1y[0][3]=iy+-250;
  quad(hit1x[0][0], hit1y[0][0], hit1x[0][1], hit1y[0][1], hit1x[0][2], hit1y[0][2], hit1x[0][3], hit1y[0][3]);
  fill(0, 0, 255);
  textSize(40);
  text("1BH", (hit1x[0][0]+hit1x[0][1])/2, (hit1y[0][1]+hit1y[0][2])/2+10);

  //一二塁間
  fill(255, 255, 0);
  hit1x[1][0]=ix+1000;
  hit1y[1][0]=iy+-400;
  hit1x[1][1]=ix+1200;
  hit1y[1][1]=iy+-300;
  hit1x[1][2]=ix+1150;
  hit1y[1][2]=iy+-200;
  hit1x[1][3]=ix+950;
  hit1y[1][3]=iy+-300;
  quad(hit1x[1][0], hit1y[1][0], hit1x[1][1], hit1y[1][1], hit1x[1][2], hit1y[1][2], hit1x[1][3], hit1y[1][3]);
  fill(0, 0, 255);
  textSize(40);
  text("1BH", (hit1x[1][0]+hit1x[1][1])/2-40, (hit1y[1][1]+hit1y[1][2])/2-40);

  //三遊間
  fill(255, 255, 0);
  hit1x[2][0]=ix+-300;
  hit1y[2][0]=iy+-300;
  hit1x[2][1]=ix+-100;
  hit1y[2][1]=iy+-400;
  hit1x[2][2]=ix+-50;
  hit1y[2][2]=iy+-300;
  hit1x[2][3]=ix+-250;
  hit1y[2][3]=iy+-200;
  quad(hit1x[2][0], hit1y[2][0], hit1x[2][1], hit1y[2][1], hit1x[2][2], hit1y[2][2], hit1x[2][3], hit1y[2][3]);
  fill(0, 0, 255);
  textSize(40);
  text("1BH", (hit1x[2][0]+hit1x[2][1])/2+10, (hit1y[2][1]+hit1y[2][2])/2+70);

  //左中間
  fill(255, 255, 0);
  hit1x[3][0]=ix+-150;
  hit1y[3][0]=iy+-800;
  hit1x[3][1]=ix+50;
  hit1y[3][1]=iy+-850;
  hit1x[3][2]=ix+150;
  hit1y[3][2]=iy+-550;
  hit1x[3][3]=ix+-50;
  hit1y[3][3]=iy+-500;
  quad(hit1x[3][0], hit1y[3][0], hit1x[3][1], hit1y[3][1], hit1x[3][2], hit1y[3][2], hit1x[3][3], hit1y[3][3]);
  fill(0, 0, 255);
  textSize(40);
  text("1BH", (hit1x[3][0]+hit1x[3][1])/2+40, (hit1y[3][1]+hit1y[3][2])/2-20);

  //右中間
  fill(255, 255, 0);
  hit1x[4][0]=ix+900;
  hit1y[4][0]=iy+-850;
  hit1x[4][1]=ix+1100;
  hit1y[4][1]=iy+-800;
  hit1x[4][2]=ix+1000;
  hit1y[4][2]=iy+-500;
  hit1x[4][3]=ix+800;
  hit1y[4][3]=iy+-550;
  quad(hit1x[4][0], hit1y[4][0], hit1x[4][1], hit1y[4][1], hit1x[4][2], hit1y[4][2], hit1x[4][3], hit1y[4][3]);
  fill(0, 0, 255);
  textSize(40);
  text("1BH", (hit1x[4][0]+hit1x[4][1])/2-40, (hit1y[4][1]+hit1y[4][2])/2-20);

  //レフト
  fill(255, 255, 0);
  hit1x[5][0]=ix+-850;
  hit1y[5][0]=iy+-750;
  hit1x[5][1]=ix+-450;
  hit1y[5][1]=iy+-850;
  hit1x[5][2]=ix+-350;
  hit1y[5][2]=iy+-750;
  hit1x[5][3]=ix+-750;
  hit1y[5][3]=iy+-650;
  quad(hit1x[5][0], hit1y[5][0], hit1x[5][1], hit1y[5][1], hit1x[5][2], hit1y[5][2], hit1x[5][3], hit1y[5][3]);
  fill(0, 0, 255);
  textSize(40);
  text("1BH", (hit1x[5][0]+hit1x[5][1])/2+30, (hit1y[5][1]+hit1y[5][2])/2+40);

  //ライト
  fill(255, 255, 0);
  hit1x[6][0]=ix+1400;
  hit1y[6][0]=iy+-850;
  hit1x[6][1]=ix+1800;
  hit1y[6][1]=iy+-750;
  hit1x[6][2]=ix+1700;
  hit1y[6][2]=iy+-650;
  hit1x[6][3]=ix+1300;
  hit1y[6][3]=iy+-750;
  quad(hit1x[6][0], hit1y[6][0], hit1x[6][1], hit1y[6][1], hit1x[6][2], hit1y[6][2], hit1x[6][3], hit1y[6][3]);
  fill(0, 0, 255);
  textSize(40);
  text("1BH", (hit1x[6][0]+hit1x[6][1])/2-30, (hit1y[6][1]+hit1y[6][2])/2-40);

}

void doublehit() {
  //センター
  noStroke();
  fill(122, 60, 255); 
  hit2x[0][0]=ix+280;
  hit2y[0][0]=iy+-1200;
  hit2x[0][1]=ix+480;
  hit2y[0][1]=iy+-1200;
  hit2x[0][2]=ix+480;
  hit2y[0][2]=iy+-950;
  hit2x[0][3]=ix+280;
  hit2y[0][3]=iy+-950;
  quad(hit2x[0][0], hit2y[0][0], hit2x[0][1], hit2y[0][1], hit2x[0][2], hit2y[0][2], hit2x[0][3], hit2y[0][3]);
  fill(0, 0, 255);
  textSize(40);
  text("2BH", (hit2x[0][0]+hit2x[0][1])/2, (hit2y[0][1]+hit2y[0][2])/2+10);

  //レフト
  fill(122, 60, 255); 
  hit2x[1][0]=ix-275;
  hit2y[1][0]=iy+-1275;
  hit2x[1][1]=ix+-150;
  hit2y[1][1]=iy+-1300;
  hit2x[1][2]=ix+-100;
  hit2y[1][2]=iy+-1200;
  hit2x[1][3]=ix+-225;
  hit2y[1][3]=iy+-1175;
  quad(hit2x[1][0], hit2y[1][0], hit2x[1][1], hit2y[1][1], hit2x[1][2], hit2y[1][2], hit2x[1][3], hit2y[1][3]);
  fill(0, 0, 255);
  textSize(40);
  text("2BH", (hit2x[1][0]+hit2x[1][1])/2+20, ((hit2y[1][1]+hit2y[1][2])/2)+20);

  //ライト
  fill(122, 60, 255); 
  hit2x[2][0]=ix+1100;
  hit2y[2][0]=iy+-1300;
  hit2x[2][1]=ix+1225;
  hit2y[2][1]=iy+-1275;
  hit2x[2][2]=ix+1175;
  hit2y[2][2]=iy+-1175;
  hit2x[2][3]=ix+1050;
  hit2y[2][3]=iy+-1200;
  quad(hit2x[2][0], hit2y[2][0], hit2x[2][1], hit2y[2][1], hit2x[2][2], hit2y[2][2], hit2x[2][3], hit2y[2][3]);
  fill(0, 0, 255);
  textSize(40);
  text("2BH", (hit2x[2][0]+hit2x[2][1])/2-20, (hit2y[2][1]+hit2y[2][2])/2);

  //フェンス左
  fill(122, 60, 255); 
  hit2x[3][0]=ix+-670;
  hit2y[3][0]=iy+-1361;
  hit2x[3][1]=ix+-420;
  hit2y[3][1]=iy+-1580;
  hit2x[3][2]=ix+-420;
  hit2y[3][2]=iy+-1460;
  hit2x[3][3]=ix+-670;
  hit2y[3][3]=iy+-1241;
  quad(hit2x[3][0], hit2y[3][0], hit2x[3][1], hit2y[3][1], hit2x[3][2], hit2y[3][2], hit2x[3][3], hit2y[3][3]);

  //フェンス中央左
  fill(122, 60, 255); 
  hit2x[4][0]=ix+-60;
  hit2y[4][0]=iy+-1580;
  hit2x[4][1]=ix+300;
  hit2y[4][1]=iy+-1580;
  hit2x[4][2]=ix+300;
  hit2y[4][2]=iy+-1460;
  hit2x[4][3]=ix+-60;
  hit2y[4][3]=iy+-1460;
  quad(hit2x[4][0], hit2y[4][0], hit2x[4][1], hit2y[4][1], hit2x[4][2], hit2y[4][2], hit2x[4][3], hit2y[4][3]);

  //フェンス中央右
  fill(122, 60, 255); 
  hit2x[5][0]=ix+660;
  hit2y[5][0]=iy+-1580;
  hit2x[5][1]=ix+1020;
  hit2y[5][1]=iy+-1580;
  hit2x[5][2]=ix+1020;
  hit2y[5][2]=iy+-1460;
  hit2x[5][3]=ix+660;
  hit2y[5][3]=iy+-1460;
  quad(hit2x[5][0], hit2y[5][0], hit2x[5][1], hit2y[5][1], hit2x[5][2], hit2y[5][2], hit2x[5][3], hit2y[5][3]);

  //フェンス右
  fill(122, 60, 255); 
  hit2x[6][0]=ix+1380;
  hit2y[6][0]=iy+-1580;
  hit2x[6][1]=ix+1630;
  hit2y[6][1]=iy+-1361;
  hit2x[6][2]=ix+1630;
  hit2y[6][2]=iy+-1241;
  hit2x[6][3]=ix+1380;
  hit2y[6][3]=iy+-1460;
  quad(hit2x[6][0], hit2y[6][0], hit2x[6][1], hit2y[6][1], hit2x[6][2], hit2y[6][2], hit2x[6][3], hit2y[6][3]);
}

void triplehit() {
  //レフト
  noStroke();
  fill(255, 122, 0);
  hit3x[0][0]=ix+-525;
  hit3y[0][0]=iy+-1225;
  hit3x[0][1]=ix+-275;
  hit3y[0][1]=iy+-1275;
  hit3x[0][2]=ix+-225;
  hit3y[0][2]=iy+-1175;
  hit3x[0][3]=ix+-475;
  hit3y[0][3]=iy+-1125;
  quad(hit3x[0][0], hit3y[0][0], hit3x[0][1], hit3y[0][1], hit3x[0][2], hit3y[0][2], hit3x[0][3], hit3y[0][3]);
  fill(0, 0, 255);
  textSize(40);
  text("3BH", (hit3x[0][0]+hit3x[0][1])/2+20, (hit3y[0][1]+hit3y[0][2])/2+20);


  //ライト
  fill(255, 122, 0);
  hit3x[1][0]=ix+1225;
  hit3y[1][0]=iy+-1275;
  hit3x[1][1]=ix+1475;
  hit3y[1][1]=iy+-1225;
  hit3x[1][2]=ix+1425;
  hit3y[1][2]=iy+-1125;
  hit3x[1][3]=ix+1175;
  hit3y[1][3]=iy+-1175;
  quad(hit3x[1][0], hit3y[1][0], hit3x[1][1], hit3y[1][1], hit3x[1][2], hit3y[1][2], hit3x[1][3], hit3y[1][3]);
  fill(0, 0, 255);
  textSize(40);
  text("3BH", (hit3x[1][0]+hit3x[1][1])/2-20, (hit3y[1][1]+hit3y[1][2])/2-10);

  //センター
  fill(255, 122, 0);
  hit3x[2][0]=ix+480;
  hit3y[2][0]=iy+-1200;
  hit3x[2][1]=ix+680;
  hit3y[2][1]=iy+-1200;
  hit3x[2][2]=ix+680;
  hit3y[2][2]=iy+-950;
  hit3x[2][3]=ix+480;
  hit3y[2][3]=iy+-950;
  quad(hit3x[2][0], hit3y[2][0], hit3x[2][1], hit3y[2][1], hit3x[2][2], hit3y[2][2], hit3x[2][3], hit3y[2][3]);
  fill(0, 0, 255);
  textSize(40);
  text("3BH", (hit3x[2][0]+hit3x[2][1])/2-20, (hit3y[2][1]+hit3y[2][2])/2-10);

  //フェンス左 
  fill(255, 122, 0);
  hit3x[3][0]=ix-1050;
  hit3y[3][0]=iy+-1030;
  hit3x[3][1]=ix+-860;
  hit3y[3][1]=iy+-1196;
  hit3x[3][2]=ix+-860;
  hit3y[3][2]=iy+-1076;
  hit3x[3][3]=ix+-1050;
  hit3y[3][3]=iy+-910;
  quad(hit3x[3][0], hit3y[3][0], hit3x[3][1], hit3y[3][1], hit3x[3][2], hit3y[3][2], hit3x[3][3], hit3y[3][3]);


  //フェンス中央
  fill(255, 122, 0);
  hit3x[4][0]=ix+300;
  hit3y[4][0]=iy+-1580;
  hit3x[4][1]=ix+660;
  hit3y[4][1]=iy+-1580;
  hit3x[4][2]=ix+660;
  hit3y[4][2]=iy+-1460;
  hit3x[4][3]=ix+300;
  hit3y[4][3]=iy+-1460;

  quad(hit3x[4][0], hit3y[4][0], hit3x[4][1], hit3y[4][1], hit3x[4][2], hit3y[4][2], hit3x[4][3], hit3y[4][3]);



  //フェンス右
  fill(255, 122, 0);
  hit3x[5][0]=ix+1820;
  hit3y[5][0]=iy+-1196;
  hit3x[5][1]=ix+2010;
  hit3y[5][1]=iy+-1030;
  hit3x[5][2]=ix+2010;
  hit3y[5][2]=iy+-910;
  hit3x[5][3]=ix+1820;
  hit3y[5][3]=iy+-1076;
  quad(hit3x[5][0], hit3y[5][0], hit3x[5][1], hit3y[5][1], hit3x[5][2], hit3y[5][2], hit3x[5][3], hit3y[5][3]);
  //fill(0, 0, 255);
  //textSize(40);
  //text("3BH", (hit3x[3][0]+hit3x[3][1])/2-20, (hit3y[3][1]+hit3y[3][2])/2-10);
}

void d_out() {
  //一番左
  noStroke();
  fill(0);
  d_outx[0][0]=ix+-860;
  d_outy[0][0]=iy+-1196;
  d_outx[0][1]=ix+-670;
  d_outy[0][1]=iy+-1361;
  d_outx[0][2]=ix+-670;
  d_outy[0][2]=iy+-1241;
  d_outx[0][3]=ix+-860;
  d_outy[0][3]=iy+-1076;
  quad(d_outx[0][0], d_outy[0][0], d_outx[0][1], d_outy[0][1], d_outx[0][2], d_outy[0][2], d_outx[0][3], d_outy[0][3]);

  //中央左
  fill(0);
  d_outx[1][0]=ix-420;
  d_outy[1][0]=iy+-1580;
  d_outx[1][1]=ix+-60;
  d_outy[1][1]=iy+-1580;
  d_outx[1][2]=ix+-60;
  d_outy[1][2]=iy+-1460;
  d_outx[1][3]=ix+-420;
  d_outy[1][3]=iy+-1460;
  quad(d_outx[1][0], d_outy[1][0], d_outx[1][1], d_outy[1][1], d_outx[1][2], d_outy[1][2], d_outx[1][3], d_outy[1][3]);

  //中央右
  fill(0);
  d_outx[2][0]=ix+1020;
  d_outy[2][0]=iy+-1580;
  d_outx[2][1]=ix+1380;
  d_outy[2][1]=iy+-1580;
  d_outx[2][2]=ix+1380;
  d_outy[2][2]=iy+-1460;
  d_outx[2][3]=ix+1020;
  d_outy[2][3]=iy+-1460;
  quad(d_outx[2][0], d_outy[2][0], d_outx[2][1], d_outy[2][1], d_outx[2][2], d_outy[2][2], d_outx[2][3], d_outy[2][3]);

  //一番右
  fill(0);
  d_outx[3][0]=ix+1630;
  d_outy[3][0]=iy+-1361;
  d_outx[3][1]=ix+1820;
  d_outy[3][1]=iy+-1195;
  d_outx[3][2]=ix+1820;
  d_outy[3][2]=iy+-1075;
  d_outx[3][3]=ix+1630;
  d_outy[3][3]=iy+-1241;
  quad(d_outx[3][0], d_outy[3][0], d_outx[3][1], d_outy[3][1], d_outx[3][2], d_outy[3][2], d_outx[3][3], d_outy[3][3]);
}
