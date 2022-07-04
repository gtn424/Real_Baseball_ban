int count1 = 0;
int count2 = 0;
int count3 = 0;
int count4 = 0;
int count5 = 0;
int count6 = 0;
int count7 = 0;
int count8 = 0;
int count9 = 0;

int c1 = 0;
int c2 = 0;
int c3 = 0;
int c4 = 0;
int c5 = 0;
int c6 = 0;
int c7 = 0;
int c8 = 0;
int c9 = 0;

void BSOtext() { //BSO表示
    fill(0);
    textSize(50);

    text("A", 1020, 505);
    text("B", 1020, 580);

    textSize(32);
    text("B", 1125, 490);
    text("S", 1125, 535);
    textSize(30);
    text("O", 1123, 580);
    if (buttingfirst) {
        noStroke();
        fill(255, 0, 0);
        rect(995, 455, 45, 5);
    } else {
        noStroke();
        fill(255, 0, 0);
        rect(995, 530, 45, 5);
    }
}

void scorecounttext() {
    textSize(50);
    fill(0);
    text(count_a, 1070, 505);
    text(count_b, 1070, 580);
}

void electric_bulletin_board()
{
    fill(51, 51, 0);
    rect(970, 45, 625, 135);

    stroke(255, 204, 0);
    strokeWeight(3);
    line(1050, 75, 1050, 179);//縦
    line(1543, 46, 1543, 179);//縦
    line(970, 75, 1593, 75);//横
    line(970, 126, 1593, 126);//横


    noStroke();

    //色
    fill(r1, g1, b1);
    rect(970, 77, 79, 48);
    fill(r2, g2, b2);
    rect(970, 128, 79, 53);

    //1P,2P
    fill(0);
    textSize(45);
    text("1P", 1010, 117);
    text("2P", 1010, 170);


    fill(255);
    textSize(25);
    text("1     2     3     4     5     6     7     8     9", 1300, 67);
    text("R", 1570, 67);

    textSize(40);
    text(count_a, 1570, 115);
    text(count_b, 1570, 170);

    //表
    if (game>=2 && inningcount<=inningmax) {
        if ((inningcount==1 && buttingfirst) ||  count1 == 1)
        {
            text(scorecount[0][1], 1080, 115); //1回
            count1 = 1;
        }
        if ((inningcount==2 && buttingfirst) ||  count2 == 1)
        {
            text(scorecount[0][2], 1080+55*1, 115);//2回
            count2 = 1;
        }
        if ((inningcount==3 && buttingfirst) || count3 == 1)
        {
            text(scorecount[0][3], 1080+55*2, 115);//3回
            count3 = 1;
        }
        if ((inningcount==4 && buttingfirst) || count4 == 1)
        {
            text(scorecount[0][4], 1080+55*3, 115);//4回
            count4 = 1;
        }
        if ((inningcount==5 && buttingfirst) || count5 == 1)
        {
            text(scorecount[0][5], 1080+55*4, 115);//5回
            count5 = 1;
        }
        if ((inningcount==6 && buttingfirst) || count6 == 1)
        {
            text(scorecount[0][6], 1080+55*5, 115);//6回
            count6 = 1;
        }
        if ((inningcount==7 && buttingfirst) || count7 == 1)
        {
            text(scorecount[0][7], 1080+55*6, 115);//7回
            count7 = 1;
        }
        if ((inningcount==8 && buttingfirst) || count8 == 1)
        {
            text(scorecount[0][8], 1080+55*7, 115);//8回
            count8 = 1;
        }
        if ((inningcount==9 && buttingfirst) || count9 == 1)
        {
            text(scorecount[0][9], 1080+55*8, 115);//9回
            count9 = 1;
        }

        //裏
        if (inningcount==1 && buttingfirst == false || c1 == 1 )
        {
            text(scorecount[1][1], 1080, 170);     //1回
            c1 = 1;
        }
        if (inningcount==2 && buttingfirst == false || c2 == 1)
        {
            text(scorecount[1][2], 1080+55*1, 170);//2回
            c2 = 1;
        }
        if (inningcount==3 && buttingfirst == false || c3 == 1)
        {
            text(scorecount[1][3], 1080+55*2, 170);//3回
            c3 = 1;
        }
        if (inningcount==4 && buttingfirst == false || c4 == 1)
        {
            text(scorecount[1][4], 1080+55*3, 170);//4回
            c4 = 1;
        }
        if (inningcount==5 && buttingfirst == false || c5 == 1)
        {
            text(scorecount[1][5], 1080+55*4, 170);//5回
            c5 = 1;
        }
        if (inningcount==6 && buttingfirst == false || c6 == 1)
        {
            text(scorecount[1][6], 1080+55*5, 170);//6回
            c6 = 1;
        }
        if (inningcount==7 && buttingfirst == false || c7 == 1)
        {
            text(scorecount[1][7], 1080+55*6, 170);//7回
            c7 = 1;
        }
        if (inningcount==8 && buttingfirst == false || c8 == 1)
        {
            text(scorecount[1][8], 1080+55*7, 170);//8回
            c8 = 1;
        }
        if (inningcount==9 && buttingfirst == false || c9 == 1)
        {
            text(scorecount[1][9], 1080+55*8, 170);//9回
            c9 = 1;
        }
    }
}

void turntext() {
    fill(0);
    textSize(40);
    text(inningcount, 1420, 590);
    if (buttingfirst) {
        triangle(1460, 555, 1440, 590, 1480, 590);
    } else {
        triangle(1460, 590, 1440, 555, 1480, 555);
    }
}

void turnchangetext() {
    fill(0);
    textSize(40);
    text(inningcount, 960-turn_x, 320);
    if (buttingfirst) {
        triangle(1010-turn_x, 280, 990-turn_x, 320, 1030-turn_x, 320);
    } else {
        triangle(1010-turn_x, 320, 990-turn_x, 280, 1030-turn_x, 280);
    }
    turn_x+=20;
    if(turntextcount==0 && turn_x>=530 && turn_x<=550){
        delay(1500);
        
    }else if(turn_x>=1050){
        turn_x=1050;
        turntextcount++;
    }
}
