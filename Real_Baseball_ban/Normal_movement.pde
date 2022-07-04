float p_x, p_y, p_s;

void pitchmove() { //ピッチング動作
    if (hit ==false) {
        y+=15;
        x+=course;
        sx+=0.3;
        sy+=0.3;
    }

    if (sx>=15.0 && sx<=15.5) {
        //println(sx);
        strikejudge();
        if (swing) {
            p_x=x;
            p_y=y;
            p_s=sx;
            //println(p_x+","+p_y+","+p_s);
            //delay(500);
            buttingjudge();
            if (hit)hittingjudgestart();
        }
    }

    if (hit) {
        if (n_x!=0 && n_y!=0) {
            //println(hit);
            x+=n_x;
            y+=n_y;
            sx*=0.95;
            sy*=0.95;
        }
    }
    if (sx<=15.0 && sx>=15.5 && swing) {
        swing=false;
        hittingballjudge=false;
        strike=true;
    }

    if (y>=700) { //リセット(キャッチャーに届いたら)
        strikejudgetext();
        x=481;
        y=180;
        sx=10;
        sy=10;
        swing_count=0;
        rightkey=0;
        course=0;
        leftkey=0;
        pitch=false;
        pitching_set=false;
        hit=false;
        swing=false;
        delay(1000);
    }
    if (strikecount==3) { //三振時
        strikecount=0;
        ballcount=0;
        outcount++;
        //println("outcount"+outcount);
    }

    if (ballcount==4) { //フォアボール時
        strikecount=0;
        ballcount=0;
        foreballmove();
    }
    if (judgetext) {
        judgetext=false;
    }
    //println(hit+","+swing);
    //println("size:"+sx);
}

void foreballmove() { //フォアボール時のランナーの動き
}

float n_x=0, n_y=0;
void battingmove(float n_bx, float n_by) {
    x=p_x;
    y=p_y;
    if (n_bx > -3 && n_bx < 0) { // センター方向
        n_x = random(-3, 0);
        if (n_by >= -8 && n_by <= -4) {
            n_y = random(-20, -10);
        } else if (n_by > -4 && n_by < -1) {
            n_y = random(-10, -5);
        } else if (bound==false && n_by >= -1 && n_by <= 0) {
            n_y = random(-5, 0);
        } else {
            n_y = random(-7, -5);
        }
    } else if (n_bx >= 0 && n_bx < 3) { // センター方向
        n_x = random(0, 3);
        if (n_by >= -8 && n_by <= -4) {
            n_y = random(-20, -10);
        } else if (n_by > -4 && n_by < -1) {
            n_y = random(-10, -5);
        } else if (bound==false && n_by >= -1 && n_by <= 0) {
            n_y = random(-5, 0);
        } else {
            n_y = random(-7, -5);
        }
    } else if (n_bx >= 3 && n_bx <= 6) {
        n_x = random(3, 6);
        if (n_by >= -8 && n_by <= -4) {
            n_y = random(-20, -10);
        } else if (n_by > -4 && n_by < -1) {
            n_y = random(-10, -5);
        } else if (bound==false && n_by >= -1 && n_by <= 0) {
            n_y = random(-5, 0);
        } else {
            n_y = random(-7, -5);
        }
    } else if (n_bx <= -3 && n_bx >= -6) {
        n_x = random(-3, -6);
        if (n_by >= -8 && n_by <= -4) {
            n_y = random(-20, -10);
        } else if (n_by > -4 && n_by < -1) {
            n_y = random(-10, -5);
        } else if (bound==false && n_by >= -1 && n_by <= 0) {
            n_y = random(-5, 0);
        } else {
            n_y = random(-7, -5);
        }
    }

    if (mx<=0) {
        bx=sbx;
        left=true;
    } else if (mx>0) {
        bx=sbx;
    }
    if (fensebounce==false) {
        b_spdx=mx;
        b_spdy=my; //ボールの変化量
    }
    if (bound && !homerun) {  //バウンドしたときのボールの変化量
        b_spdy=my-10;
    }
}
