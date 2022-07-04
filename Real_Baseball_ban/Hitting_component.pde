void hitting_groundcomponent() { //<>// //<>//
    hitting_ground();
    hitting_batterbox();
    groundmove();
    Gravity();
    fensebounce();
    judgefieldcomponent();
    hitting_ballshadow();
    hitting_ball();
    ballshadowmove();
    ballmove();
    fair_linea[0]=(fair_liney[1]-fair_liney[0])/(fair_linex[1]-fair_linex[0]);
    fair_linea[1]=(fair_liney[3]-fair_liney[2])/(fair_linex[3]-fair_linex[2]);

    if (hittingjudgetext==false) {
        if (by<iy+270) {
            if (bounce==1) {
                //println("Outfield");
                fairjudge();
            }
        }
        if (by>iy+270) {
            if (bound==false) {
                fairjudge();
            }
            if (bounce==1) {
                //println("Infield");
                fairjudge();
            }
            if (bounce>1 && (abs(temp_speedx)<0.005 || abs(temp_speedy)<0.005)) {
                //println("Infield");
                fairjudge();
            }
        }

        if (fair) {
            homerunjudge();
        }

        if (fensebounce && fair) {
            balljudge_y=by;
            balljudge_x=bx;
            balljudge_col();
            judgecomponent();
            /*println("FENSE");
            println("MOVED"+","+ix+","+iy);
            for (int i=0; i<8; i++) {
                for (int n=0; n<4; n++) {
                    println("Single"+i+"&"+n+": "+single_a[i][n]+","+single_x[i][n]+","+single_y[i][n]);
                }
            }
            for (int i=0; i<8; i++) {
                for (int n=0; n<4; n++) {
                    println("Double"+i+"&"+n+": "+double_a[i][n]+","+double_x[i][n]+","+double_y[i][n]);
                }
            }
            for (int i=0; i<8; i++) {
                for (int n=0; n<4; n++) {
                    println("Triple"+i+"&"+n+": "+triple_a[i][n]+","+triple_x[i][n]+","+triple_y[i][n]);
                }
            }
            for (int i=0; i<8; i++) {
                for (int n=0; n<4; n++) {
                    println("Double Out"+i+"&"+n+": "+d_out_a[i][n]+","+d_out_x[i][n]+","+d_out_y[i][n]);
                }
            }*/
        }

        if (!fensebounce && fair && (abs(temp_speedx)<0.005 && abs(temp_speedy)<0.005)) {
            balljudge_y=by;
            balljudge_x=bx;
            balljudge_col();
            judgecomponent();
            /*println("JUDGE"+","+bx+","+by);
            println("MOVED"+","+ix+","+iy);
            for (int i=0; i<8; i++) {
                for (int n=0; n<4; n++) {
                    println("Single"+i+"&"+n+": "+single_a[i][n]+","+single_x[i][n]+","+single_y[i][n]);
                }
            }
            for (int i=0; i<8; i++) {
                for (int n=0; n<4; n++) {
                    println("Double"+i+"&"+n+": "+double_a[i][n]+","+double_x[i][n]+","+double_y[i][n]);
                }
            }
            for (int i=0; i<8; i++) {
                for (int n=0; n<4; n++) {
                    println("Triple"+i+"&"+n+": "+triple_a[i][n]+","+triple_x[i][n]+","+triple_y[i][n]);
                }
            }
            for (int i=0; i<8; i++) {
                for (int n=0; n<4; n++) {
                    println("Double Out"+i+"&"+n+": "+d_out_a[i][n]+","+d_out_x[i][n]+","+d_out_y[i][n]);
                }
            }*/
        }
        if (hittingjudge) {
            if (butterscore<5) {
                hittingjudge=false;
                hittingjudgetext=true;
                temp_speedx=0;
                temp_speedy=0;
                hittingtexttime=millis();
                //println("Ball"+bx+","+by);
                count++;
                if (count==1) {
                    runnermove();
                }
            }
        }
    }
    if (hittingjudgetext) {
        hittingresulttext();
        if (millis()-hittingtexttime>3000) {
            if (fair) {
                allreset();
            } else {
                foulreset();
            }
            hittingballjudge=false;
        }
    }
    if (fensebounce) {
        //println(g+","+mx+","+my+","+b_spdx+","+b_spdy+","+secondbounce);
    }
}

void judgefieldcomponent() {
    noStroke();
    simplehit();
    fense();
    doublehit();
    triplehit();
    d_out();
}

void judgecomponent() {
    strike=false;
    hittingjudge=true;
    if (fair) {
        power();
    }
}
