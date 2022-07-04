void hitting_ground() { // グラウンド
    noStroke();
    fill(0);
    rect(0, 960, 960, 640);
    fill(0, 200, 0);
    rect(ox+(-2000), oy+(-3000), 5000, 5000); //外野
    fill(122, 50, 0);
    ellipse(ix+480, iy+550, 1800, 1280); //内野
}

void hitting_batterbox() { //ライン類
    stroke(255);
    strokeWeight(5);
    /*-右打者-*/
    line(ix+445, iy+560, ix+385, iy+560);//上辺
    line(ix+385, iy+560, ix+385, iy+650);//左辺
    line(ix+385, iy+650, ix+445, iy+650);//下辺
    line(ix+445, iy+650, ix+445, iy+560);//右辺

    /*--左打者--*/
    line(ix+515, iy+560, ix+575, iy+560);//上辺
    line(ix+575, iy+560, ix+575, iy+650);//右辺
    line(ix+575, iy+650, ix+515, iy+650);//下辺
    line(ix+515, iy+650, ix+515, iy+560);//左辺

    /*--ホームベース--*/
    fill(255);
    noStroke();
    rect(ix+455, iy+575, 50, 30);
    triangle(ix+455, iy+605, ix+505, iy+605, ix+480, iy+630);

    /*--フェアゾーン--*/
    stroke(255);
    strokeWeight(5);
    fair_linex[0]=ix+420;
    fair_linex[1]=ix+(-1500);
    fair_linex[2]=ix+540;
    fair_linex[3]=ix+2460;
    fair_liney[0]=iy+560;
    fair_liney[1]=iy+(-1360);
    fair_liney[2]=iy+560;
    fair_liney[3]=iy+(-1360);
    line(fair_linex[0],fair_liney[0] ,fair_linex[1],fair_liney[1]); //レフト側
    line(fair_linex[2],fair_liney[2] ,fair_linex[3],fair_liney[3]); //ライト側
    
}

void hitting_ballshadow() {
    noStroke();
    fill(50);
    ellipse(sbx, sby, bs, bs);
}

void hitting_ball() {
    fill(255);
    ellipse(bx, by, bs, bs);
}

void fense() {
    stroke(0, 0, 0);
    strokeWeight(5);
    /*----フェンスとグラウンドの境界線----*/
    f_gx[0][0]=ix-1050;
    f_gx[0][1]=ix-420;
    f_gx[1][0]=ix-420;
    f_gx[1][1]=ix+1380;
    f_gx[2][0]=ix+1380;
    f_gx[2][1]=ix+2010;

    f_gy[0][0]=iy-910;
    f_gy[0][1]=iy-1460;
    f_gy[1][0]=iy-1460;
    f_gy[1][1]=iy-1460;
    f_gy[2][0]=iy-1460;
    f_gy[2][1]=iy-910;

    line(f_gx[0][0], f_gy[0][0], f_gx[0][1], f_gy[0][1]); //レフトからセンター
    line(f_gx[1][0], f_gy[1][0], f_gx[1][1], f_gy[1][1]); //センター
    line(f_gx[2][0], f_gy[2][0], f_gx[2][1], f_gy[2][1]); //センターからライト

    /*----客席とフェンスの境界----*/
    a_fx[0][0]=ix-1050;
    a_fx[0][1]=ix-420;
    a_fx[1][0]=ix-420;
    a_fx[1][1]=ix+1380;
    a_fx[2][0]=ix+1380;
    a_fx[2][1]=ix+2010;

    a_fy[0][0]=iy-1030;
    a_fy[0][1]=iy-1580;
    a_fy[1][0]=iy-1580;
    a_fy[1][1]=iy-1580;
    a_fy[2][0]=iy-1580;
    a_fy[2][1]=iy-1030;

    line(a_fx[0][0], a_fy[0][0], a_fx[0][1], a_fy[0][1]); //レフトからセンター
    line(a_fx[1][0], a_fy[1][0], a_fx[1][1], a_fy[1][1]); //センター
    line(a_fx[2][0], a_fy[2][0], a_fx[2][1], a_fy[2][1]); //ライトからセンター

    /*----フェンス----*/
    fill(0, 100, 0);
    quad(ix+1380, iy-1580, ix+2010, iy-1030, ix+2010, iy-910, ix+1380, iy-1460); //ライト側
    quad(ix-420, iy-1580, ix+1380, iy-1580, ix+1380, iy-1460, ix-420, iy-1460); //センター側
    quad(ix-1050, iy-1030, ix-420, iy-1580, ix-420, iy-1460, ix-1050, iy-910); //レフト側    

    /*----ポール----*/
    stroke(255, 255, 0);
    line(ix-1050, iy-910, ix-1050, iy-1310); //レフト
    line(ix-1050, iy-1310, ix-1030, iy-1330);//上辺
    line(ix-1050, iy-1060, ix-1030, iy-1080); //下辺
    line(ix-1030, iy-1330, ix-1030, iy-1080); //奥

    line(ix+2010, iy-910, ix+2010, iy-1310); //ライト
    line(ix+2010, iy-1310, ix+1990, iy-1330);
    line(ix+2010, iy-1060, ix+1990, iy-1080);
    line(ix+1990, iy-1330, ix+1990, iy-1080);
}

void stand() {
}
