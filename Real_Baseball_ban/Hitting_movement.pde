void Gravity() { //重力
    mx*=0.99;
    my*=0.99;
    temp_speedx=b_spdx;
    temp_speedy=b_spdy;
    b_spdx*=0.99;
    b_spdy*=0.99;
}

void boundgravity() { //バウンドを伴う重力加速
    if (fensebounce==false && secondbounce<0) {
        b_spdy+=g;
        g=g+0.005;
    }
    if (fensebounce && secondbounce>0) {
        b_spdy-=g;
        g=g-0.005;
    }

    if (hit) {
        if ((left && ((by>=sby-1)&& bx>=sbx))|| (left==false && (by>=sby-1) && bx<=sbx)) {
            bounce++;
            if (bounce>0) {
                if (fensebounce==false) {
                    b_spdy=secondbounce;
                    secondbounce+=0.5;
                    if (bounce<=2) {
                        g=0.01;
                    }
                }
            }
            if (fensebounce==false && secondbounce>=0) {
                b_spdx=mx;
                b_spdy=my;
                g=0;
                ballgolo();
            }
        }

        if (fensebounce && (((by<=sby+5)&&(by>=sby-5)) && bx>=sbx) && (((by<=sby+5)&&(by>=sby-5)) && bx<=sbx)) {
            bounce++;
            if (bounce>0) {
                b_spdy=secondbounce;
                secondbounce-=0.5;
            }
            if (secondbounce<=0) {
                b_spdx=mx;
                b_spdy=my;
                by=sby-2;
                g=0;
                bx=bx+b_spdx;
                by=by+b_spdy;
            }
        }
    }
}

void groundmove() { //打球によって視点移動
    if (hit) {
        if (fensebounce==false /*&& bx>=380 || bx<=580 || by<= 300*/) {
            temp_x=-3*mx;
            temp_y=-3*my;
            ix+=(temp_x);
            iy+=(temp_y);
            ox=ix;
            oy=iy;
        }
        if (fensebounce) {
            ix=fensetempx+-10*mx;
            iy=fensetempy+-10*my;
        }
    }
}

void ballshadowmove() { //打球の影
    if (hit) {
        sbx+=mx;
        sby+=my;
    }
}

void ballmove() { //打球の動き
    if (hit) {
        if (bound) {
            bx+=b_spdx;
            by+=b_spdy;
        }
        if (bound == false) {
            ballgolo();
        }
    }
}

void ballgolo() { //ゴロの打球
    golo=true;
    temp_speedx=b_spdx;
    temp_speedy=b_spdy;
    bx+=b_spdx;
    by+=b_spdy;
}

void runnermove() { //ランナーの動き
    //println("runnermove");
    if (butterscore<4) {
        for (int i=1; i<4; i++) {
            if (runnercount[i]) {
                /*----得点の判定----*/
                if (i+butterscore>=4) {
                    if (buttingfirst) {
                        scorecount[0][inningcount]++; //得点加算(先攻)
                        count_a++;
                    } else if (buttingfirst==false) {
                        scorecount[1][inningcount]++; //得点加算(後攻)
                        count_b++;
                    }
                    runnercount[i]=false;
                } else {
                    runnercount[i+butterscore]=true;
                }
                /*----ここまで----*/
            }
        }
        runnercount[butterscore]=true;
    }

    if (butterscore==4) {
        for (int i=1; i<4; i++) {
            if (runnercount[i]) {
                if (buttingfirst) {
                    scorecount[0][inningcount]+=1; //得点加算(先攻)
                    count_a++;
                } else if (buttingfirst==false) {
                    scorecount[1][inningcount]+=1; //得点加算(後攻)
                    count_b++;
                }
                runnercount[i]=false;
            }
        }
        if (buttingfirst) {
            scorecount[0][inningcount]+=1; //得点加算(先攻)
            count_a++;
        } else if (buttingfirst==false) {
            scorecount[1][inningcount]+=1; //得点加算(後攻)
            count_b++;
        }
    }
}


void fensebounce() { //フェンスでバウンドする
    for (int i=0; i<3; i++) {
        fense_a[i]=(f_gy[i][1]-f_gy[i][0])/(f_gx[i][1]-f_gx[i][0]);
        //println(i+","+fense_a[i]);
    }
    for (int i=0; i<3; i++) {
        audience_a[i]=(a_fy[i][1]-a_fy[i][0])/(a_fx[i][1]-a_fx[i][0]);
        //println(i+","+audience_a[i]);
    }
    fense_left=(fense_a[0]*(bx))+(f_gy[0][0])-(fense_a[0]*(f_gx[0][0]));
    audience_left=(audience_a[0]*(bx))+(a_fy[0][0])-(audience_a[0]*(a_fx[0][0]));
    fense_right=(fense_a[2]*(bx))+(f_gy[2][0])-(fense_a[2]*(f_gx[2][0]));
    audience_right=(audience_a[2]*(bx))+(a_fy[2][0])-(audience_a[2]*(a_fx[2][0]));

    fense_leftx=(by-((f_gy[0][0])-(fense_a[0]*(f_gx[0][0]))))/fense_a[0];
    audience_leftx=(by-((a_fy[0][0])-(audience_a[0]*(a_fx[0][0]))))/audience_a[0];
    fense_rightx=(by-((f_gy[2][0])-(fense_a[2]*(f_gx[2][0]))))/fense_a[2];
    audience_rightx=(by-((a_fy[2][0])-(audience_a[2]*(a_fx[2][0]))))/audience_a[2];

    if (fensebounce==false && fensebounce1<=1) {
        fensetempx=ix;
        fensetempy=iy;
        if (bound) {
            if (sby<=f_gy[1][0]+5 && sbx>=f_gx[1][0] && sbx<=f_gx[1][1]) {
                if (by<f_gy[1][0] && by>=a_fy[1][0]) {
                    balljudge_y=by;
                    balljudge_x=bx;
                    println("JUDGE"+","+balljudge_x+","+balljudge_y);
                    fensebounce1++;
                    println(fensebounce1);
                    speed_reverse();
                    fensebounce_move();
                    fensebounce=true;
                }
            } else if (sby<=fense_left+10) {
                if (by>=audience_left && by<=fense_left) {
                    balljudge_y=by;
                    balljudge_x=bx;
                    println("JUDGE"+","+balljudge_x+","+balljudge_y);
                    fensebounce1++;
                    println(fensebounce1);
                    speed_reverse();
                    fensebounce_move();
                    fensebounce=true;
                }
            } else if (sby<=fense_right+10) {
                if (by>=audience_right && by<=fense_right) {
                    balljudge_y=by;
                    balljudge_x=bx;
                    println("JUDGE"+","+balljudge_x+","+balljudge_y);
                    fensebounce1++;
                    println(fensebounce1);
                    speed_reverse();
                    fensebounce_move();
                    fensebounce=true;
                }
            }
        } else {
            if (by<f_gy[1][0]+2) {
                balljudge_y=by;
                balljudge_x=bx;
                println("JUDGE"+","+balljudge_x+","+balljudge_y);
                fensebounce1++;
                println(fensebounce1);
                speed_reverse();
                fensebounce_move();
                fensebounce=true;
            } else if (by<=fense_left+10) {
                balljudge_y=by;
                balljudge_x=bx;
                println("JUDGE"+","+balljudge_x+","+balljudge_y);
                fensebounce1++;
                println(fensebounce1);
                speed_reverse();
                fensebounce_move();
                fensebounce=true;
            } else if (by<=fense_right+10) {
                balljudge_y=by;
                balljudge_x=bx;
                println("JUDGE"+","+balljudge_x+","+balljudge_y);
                fensebounce1++;
                println(fensebounce1);
                speed_reverse();
                fensebounce_move();
                fensebounce=true;
            }
        }
    }
}

void fensebounce_move() {
    temp_speedx=-temp_speedx;
    temp_speedy=-temp_speedy;
}

void speed_reverse() {
    if (fensebounce1==1) {
        if (bound) {
            g=0;
            mx=-mx;
            my=-my;
            b_spdx=-b_spdx;
            b_spdy=-b_spdy;
            by=sby-2;
            secondbounce=-(secondbounce+8);
        } else {
            g=0;
            mx=-mx;
            my=-my;
            b_spdx=-b_spdx;
            b_spdy=-b_spdy;
            by=sby-2;
            //println(g+","+mx+","+my+","+b_spdx+","+b_spdy);
        }
    }
}
