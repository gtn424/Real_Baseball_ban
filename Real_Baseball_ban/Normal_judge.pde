void strikejudge() { //ストライク判定
    if (x>=420 && x<=540 && y>=410 && y<=520) { //420,410,120,110
        strike=true;
    } else {
        strike=false;
    }
}

void buttingjudge() { //打球判定
    if (swing && (swing_count == 1 && x >= mouseX-25) && (x <= mouseX+25) && (y >=mouseY-10) && (y <= mouseY-5) )
    {
        println("フライ");
        swing_count = 2;
        hit=true;
    } else if (swing && (swing_count == 1 && x >= mouseX-25) && (x <= mouseX+25) && (y >=mouseY-5) && (y <= mouseY))
    {
        println("マシン");
        swing_count = 2;
        hit=true;
        if (random(0, 100)>=95) {
            homerun=true;
        }
    } else if (swing_count ==1 && swing && (x >= mouseX-25) && (x <= mouseX+25) && (y <= mouseY+10) && (y > mouseY) )
    {
        println("ゴロ");
        swing_count = 2;
        hit=true;
        bound=false;
    } else {
        strike=true;
    }
}

void hittingjudgestart() { //打球判定するタイミングを決定
    if (homerun==false) {
        mx=random(-6,6);
        my=random(-8, 0); //影の変化量
        //println(mx+","+my);
        if (mx>=4 || mx<=-4 || my>=4 || my<=-4) {
            g=0.005;
            secondbounce=random(-6, -8);
        } else {
            g=0.005;
            //println("G:"+g);
            secondbounce=random(-2, -6);
        }
    }
    battingmove(mx, my);
    if (homerun) {
        mx=random(-6, 6);
        my=random(-13, -8); //影の変化量
        g=0.003;
        secondbounce=random(-2, -4);
        b_spdy=my-10;
    }
}
