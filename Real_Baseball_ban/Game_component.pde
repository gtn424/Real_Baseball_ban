void allcomponent() {
    if (game == 0) {
        gamestart();
    }
    if (game == 1)
    {
        mode();
    }
    if (game==2) {
        gamecomponent();
        operation();
        gamefinish();
    }
    if (game==3) {
        inningcount--;
        result();
        electric_bulletin_board();
    }
}

void gamefinish() {
    if (inningmax==inningcount) {
        if (buttingfirst && count_a<count_b && outcount>=3) {
            game=3;
        }
        if (!buttingfirst && count_a<count_b) {
            game=3;
        }
        if (!buttingfirst && (count_a>count_b || count_a==count_b) && outcount>=3 ) {
            game=3;
        }
    }
}

void gamecomponent() {
    if (hittingballjudge==false) {
        normal_groundcomponent();
        if (pitch) {
            pitchmove();
        }
    }
    if (hittingballjudge) {
        //delay(1000);
        if (bound) {
            boundgravity();
        }
        hitting_groundcomponent();
    }
    turn();
    board();
    if (inningcount>inningmax) {
        allreset();
        game=3;
    }
}

void turn() { // 攻守交替
    if (!hittingballjudge && outcount>=3 && game==2 && inningcount<=inningmax) {
        turnchange();
    }
    turnchangetext();
}

void allreset() {
    result1=0;
    result0=0;
    fensebounce1=0;
    swing_count=0;
    butterscore=5;
    strikecount=0;
    balljudge_x=0;
    balljudge_y=0;
    count=0;
    ballcount=0;
    ix=0;
    iy=0;
    ox=0;
    oy=0; //内外野の座標変量
    sbx=480;
    sby=550;
    bs=10;//ボールの座標変量
    bx=sbx;
    by=sby-2;
    g=0.008;
    boundborder=-29;
    secondbounce=-8;
    x=481;
    y=180;
    sx=10;
    sy=10;
    rightkey=0;
    leftkey=0;
    course=0;
    bounce=0;

    hit=false;
    pitch=false;
    strike=false;
    swing=false;
    judgetext=false;
    hittingballjudge=false;
    hittingjudge=false;
    hittingjudgetext=false;
    pitching_set=false;
    hit_judge=false;
    fensebounce=false;
    golo=false;

    hittingtexttime=0;
    bound = true;
    left=false;
    homerun=false;
    doubleplay=false;
    temp_x=0;
    temp_y=0;
}

void foulreset() {
    fensebounce1=0;
    swing_count=0;
    butterscore=5;
    ix=0;
    iy=0;
    ox=0;
    oy=0; //内外野の座標変量
    sbx=480;
    sby=550;
    count=0;
    bs=10;//ボールの座標変量
    bx=sbx;
    by=sby-2;
    g=0.008;
    boundborder=-29;
    secondbounce=-8;
    balljudge_x=0;
    balljudge_y=0;
    x=481;
    y=180;
    sx=10;
    sy=10;
    rightkey=0;
    leftkey=0;
    course=0;
    bounce=0;

    hit=false;
    pitch=false;
    strike=false;
    swing=false;
    judgetext=false;
    hittingballjudge=false;
    pitching_set=false;
    hit_judge=false;
    hittingjudge=false;
    hittingjudgetext=false;
    fensebounce=false;
    golo=false;

    hittingtexttime=0;
    bound = true;
    left=false;
    homerun=false;
    doubleplay=false;
    temp_x=0;
    temp_y=0;
}

void turnchange() {
    turntextcount=0;
    turn_x=0;
    fensebounce1=0;
    swing_count=0;
    butterscore=5;
    strikecount=0;
    ballcount=0;
    outcount=0;
    ix=0;
    iy=0;
    balljudge_x=0;
    balljudge_y=0;
    count=0;
    ox=0;
    oy=0; //内外野の座標変量
    sbx=480;
    sby=550;
    bs=10;//ボールの座s標変量
    bx=sbx;
    by=sby-2;
    g=0.008;
    boundborder=-29;
    secondbounce=-8;
    x=481;
    y=180;
    sx=10;
    sy=10;
    rightkey=0;
    leftkey=0;
    course=0;
    bounce=0;

    hit=false;
    pitch=false;
    strike=false;
    swing=false;
    judgetext=false;
    pitching_set=false;
    hittingballjudge=false;
    hit_judge=false;
    hittingjudge=false;
    hittingjudgetext=false;
    fensebounce=false;
    golo=false;

    hittingtexttime=0;
    bound = true;
    left=false;
    homerun=false;
    doubleplay=false;

    if (buttingfirst) {
        println("a");
        buttingfirst=false;
    } else if (buttingfirst==false) {
        println("b");
        inningcount++;
        buttingfirst=true;
    }

    println(inningcount+","+buttingfirst);
    temp_x=0;
    temp_y=0;
    for (int i=0; i<4; i++) {
        runnercount[i]=false;
    }
}

void final_allreset() {
    swing_count=0;
    count=0;
    count_a=0;
    count_b=0;
    strikecount=0;
    fensebounce1=0;
    ballcount=0;
    outcount=0;
    inningcount=1;
    balljudge_x=0;
    balljudge_y=0;
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
    course=0;
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
    temp_x=0;
    temp_y=0;
    count1 = 0;
    count2 = 0;
    count3 = 0;
    count4 = 0;
    count5 = 0;
    count6 = 0;
    count7 = 0;
    count8 = 0;
    count9 = 0;

    c1 = 0;
    c2 = 0;
    c3 = 0;
    c4 = 0;
    c5 = 0;
    c6 = 0;
    c7 = 0;
    c8 = 0;
    c9 = 0;
}
