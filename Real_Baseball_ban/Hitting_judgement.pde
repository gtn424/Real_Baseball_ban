void fairjudge() {
    if (bound) {
        result0=(fair_linea[0]*(bx))+(fair_liney[0])-(fair_linea[0]*(fair_linex[0]));
        result1=(fair_linea[1]*(bx))+(fair_liney[2])-(fair_linea[1]*(fair_linex[2]));
    }

    if (!bound) {
        if ((left && 0.5>=my/mx) || (left==false && -0.5<=my/mx)) {
            println("foul");
            hittingtexttime=millis();
            butterscore=0;
            fair=false;
            strike=true;
            hittingjudge=false;
            hittingjudgetext=true;
            if (strikecount<2) {
                strikecount++;
            }
        } else {
            fair=true;
        }
    } else if (bound && ix+420>=bx) {
        println("LEFT");
        if (by>result0) {
            println("foul");
            hittingtexttime=millis();
            butterscore=0;
            fair=false;
            strike=true;
            hittingjudge=false;
            hittingjudgetext=true;
            if (strikecount<2) {
                strikecount++;
            }
        } else {
            fair=true;
        }
    } else if (bound && ix+540<bx) {
        println("RIGHT");
        if (by>result1) {
            println("foul");
            hittingtexttime=millis();
            butterscore=0;
            fair=false;
            strike=true;
            hittingjudge=false;
            hittingjudgetext=true;
            if (strikecount<2) {
                strikecount++;
            }
        } else {
            fair=true;
        }
    }
} 

void balljudge_col() {
    for (int i=0; i<8; i++) {
        for (int n=0; n<3; n++) {
            if (hit1x[i][n+1]-hit1x[i][n]==0) {
                single_a[i][n]=0;
            } else if (hit1x[i][n+1]-hit1x[i][n]!=0) {
                single_a[i][n]=(hit1y[i][n+1]-hit1y[i][n])/(hit1x[i][n+1]-hit1x[i][n]);
            }
            if (hit2x[i][n+1]-hit2x[i][n]==0) {
                double_a[i][n]=0;
            } else if (hit2x[i][n+1]-hit2x[i][n]!=0) {
                double_a[i][n]=(hit2y[i][n+1]-hit2y[i][n])/(hit2x[i][n+1]-hit2x[i][n]);
            }
            if (hit3x[i][n+1]-hit3x[i][n]==0) {
                triple_a[i][n]=0;
            } else if (hit3x[i][n+1]-hit3x[i][n]!=0) {
                triple_a[i][n]=(hit3y[i][n+1]-hit3y[i][n])/(hit3x[i][n+1]-hit3x[i][n]);
            }
            if (d_outx[i][n+1]-d_outx[i][n]==0) {
                d_out_a[i][n]=0;
            } else if (d_outx[i][n+1]-d_outx[i][n]!=0) {
                d_out_a[i][n]=(d_outy[i][n+1]-d_outy[i][n])/(d_outx[i][n+1]-d_outx[i][n]);
            }
        }
    }
    for (int i=0; i<8; i++) {
        if (hit1x[i][0]-hit1x[i][3]==0) {
            single_a[i][3]=0;
        } else if (hit1x[i][0]-hit1x[i][3]==0) {
            single_a[i][3]=(hit1y[i][0]-hit1y[i][3])/(hit1x[i][0]-hit1x[i][3]);
        }
        if (hit2x[i][0]-hit2x[i][3]==0) {
            double_a[i][3]=0;
        } else if (hit2x[i][0]-hit2x[i][3]==0) {
            double_a[i][3]=(hit2y[i][0]-hit2y[i][3])/(hit2x[i][0]-hit2x[i][3]);
        }
        if (hit3x[i][0]-hit3x[i][3]==0) {
            triple_a[i][3]=0;
        } else if (hit3x[i][0]-hit3x[i][3]==0) {
            triple_a[i][3]=(hit3y[i][0]-hit3y[i][3])/(hit3x[i][0]-hit3x[i][3]);
        }
        if (d_outx[i][0]-d_outx[i][3]==0) {
            d_out_a[i][3]=0;
        } else if (d_outx[i][0]-d_outx[i][3]==0) {
            d_out_a[i][3]=(d_outy[i][0]-d_outy[i][3])/(d_outx[i][0]-d_outx[i][3]);
        }
    }

    for (int i=0; i<8; i++) {
        for (int n=0; n<4; n++) {
            if (single_a[i][n]!=0) {
                single_y[i][n]=(single_a[i][n]*(bx))+((hit1y[i][n])-(single_a[i][n]*(hit1x[i][n])));
            }
            if (double_a[i][n]!=0) {
                double_y[i][n]=(double_a[i][n]*(bx))+((hit2y[i][n])-(double_a[i][n]*(hit2x[i][n])));
            }
            if (triple_a[i][n]!=0) {
                triple_y[i][n]=(triple_a[i][n]*(bx))+((hit3y[i][n])-(triple_a[i][n]*(hit3x[i][n])));
            }
            if (d_out_a[i][n]!=0) {
                d_out_y[i][n]=(d_out_a[i][n]*(bx))+((d_outy[i][n])-(d_out_a[i][n]*(d_outx[i][n])));
            }
        }
    }

    for (int i=0; i<8; i++) {
        for (int n=0; n<4; n++) {
            if (single_a[i][n]!=0) {
                single_x[i][n]=(by-((hit1y[i][n])-(single_a[i][n]*(hit1x[i][n]))))/single_a[i][n];
            }
            if (double_a[i][n]!=0) {
                double_x[i][n]=(by-((hit2y[i][n])-(double_a[i][n]*(hit2x[i][n]))))/double_a[i][n];
            }
            if (triple_a[i][n]!=0) {
                triple_x[i][n]=(by-((hit3y[i][n])-(triple_a[i][n]*(hit3x[i][n]))))/triple_a[i][n];
            }
            if (d_out_a[i][n]!=0) {
                d_out_x[i][n]=(by-((d_outy[i][n])-(d_out_a[i][n]*(d_out_x[i][n]))))/d_out_a[i][n];
            }
            //println(i+"&"+n+": "+single_a[i][n]+","+hit1x[i][n]+","+by);
        }
    }
}


void power()
{
    if (fensebounce) {
        println(fensebounce);
        for (int i=3; i<7; i++) {
            if (double_a[i][0]!=0 && double_a[i][2]!=0) {
                if (by>=double_y[i][0] && by<=double_y[i][2] && bx<=hit2x[i][1] && bx>=hit2x[i][3]) {
                    butterscore=2;
                    hit_judge=true;
                    hittingjudge=true;
                }
            } 
            if (double_a[i][0]==0 && double_a[i][2]==0 && double_a[i][1]==0 && double_a[i][3]==0) {
                if (by>=hit2y[i][1] && by<=hit2y[i][2] && bx<=hit2x[i][2] && bx>=hit2x[i][3]) {
                    butterscore=2;
                    hit_judge=true;
                    hittingjudge=true;
                }
            }
        }

        for (int i=3; i<6; i++) {
            if (triple_a[i][0]!=0 && triple_a[i][2]!=0) {
                if (by>=triple_y[i][0] && by<=triple_y[i][2] && bx<=hit3x[i][1] && bx>=hit3x[i][3]) {
                    butterscore=3;
                    hit_judge=true;
                    hittingjudge=true;
                }
            } 
            if (triple_a[i][0]==0 && triple_a[i][2]==0 && triple_a[i][1]==0 && triple_a[i][3]==0) {
                if (by>=hit3y[i][1] && by<=hit3y[i][2] && bx<=hit3x[i][2] && bx>=hit3x[i][3]) {
                    butterscore=3;
                    hit_judge=true;
                    hittingjudge=true;
                }
            }
        }

        for (int i=0; i<4; i++) {
            if (d_out_a[i][0]!=0 && d_out_a[i][2]!=0) {
                if (by>=d_out_y[i][0] && by<=d_out_y[i][2] && bx<=d_outx[i][2] && bx>=d_outx[i][3]) {
                    butterscore=0;
                    outcount+=2;
                    hit_judge=false;
                    doubleplay=true;
                    hittingjudge=true;
                }
            } 
            if (d_out_a[i][0]==0 && d_out_a[i][2]==0 && d_out_a[i][1]==0 && d_out_a[i][3]==0) {
                if (by>=d_outy[i][1] && by<=d_outy[i][2] && bx<=d_outx[i][2] && bx>=d_outx[i][3]) {
                    butterscore=0;
                    outcount+=2;
                    hit_judge=false;
                    hittingjudge=true;
                    doubleplay=true;
                }
            }
        }
    } else {
        for (int i=0; i<7; i++) { //ヒット
            if (single_a[i][0]==0 && single_a[i][2]==0 && single_a[i][1]==0 && single_a[i][3]==0) {
                if (by>=hit1y[i][0] && by<=hit1y[i][2] && bx<=hit1x[i][1] && bx>=hit1x[i][3]) {
                    butterscore=1;
                    hit_judge=true;
                    hittingjudge=true;
                }
            } 
            if (by>=single_y[i][0] && by<=single_y[i][2] && bx<=single_x[i][1] && bx>=single_x[i][3]) {
                butterscore=1;
                hit_judge=true;
                hittingjudge=true;
            }
        }
        for (int i=0; i<3; i++) { //ツーベース
            if (double_a[i][0]==0 && double_a[i][2]==0 && double_a[i][1]==0 && double_a[i][3]==0) {
                if (by>=hit2y[i][0] && by<=hit2y[i][2] && bx<=hit2x[i][1] && bx>=hit2x[i][3]) {
                    butterscore=2;
                    hit_judge=true;
                    hittingjudge=true;
                }
            } 
            if (by>=double_y[i][0] && by<=double_y[i][2] && bx<=double_x[i][1] && bx>=double_x[i][3]) {
                butterscore=2;
                hittingjudge=true;
                hit_judge=true;
            }
        }
        for (int i=0; i<3; i++) { //スリーベース
            if (triple_a[i][0]==0 && triple_a[i][2]==0 && triple_a[i][1]==0 && triple_a[i][3]==0) {
                if (by>=hit3y[i][0] && by<=hit3y[i][2] && bx<=hit3x[i][1] && bx>=hit3x[i][3]) {
                    butterscore=3;
                    hit_judge=true;
                    hittingjudge=true;
                }
            } 
            if (by>=triple_y[i][0] && by<=triple_y[i][2] && bx<=triple_x[i][1] && bx>=triple_x[i][3]) {
                butterscore=3;
                hit_judge=true;
                hittingjudge=true;
            }
        }
    }

    if (!hit_judge && !doubleplay) {
        butterscore=0;
        outcount++;
    }
}

void homerunjudge() {
    if (sbx>=f_gx[1][0] && sbx<=f_gx[1][1]) {
        if (by<=a_fy[1][0]) {
            butterscore = 4;
            hit_judge=true;
            hittingjudge=true;
            hittingjudgetext=true;
            homerun=true;
            println("HOMERUN");
        }
    } else if (sby<=fense_left) {
        if (by<=audience_left) {
            butterscore = 4;
            hit_judge=true;
            hittingjudgetext=true;
            hittingjudge=true;
            homerun=true;
            println("HOMERUN");
        }
    } else if (sby<=fense_right) {
        if (by<=audience_right) {
            butterscore = 4;
            hit_judge=true;
            hittingjudgetext=true;
            hittingjudge=true;
            homerun=true;
            println("HOMERUN");
        }
    }

    if (homerun) {
        butterscore = 4;
        hit_judge=true;
        hittingjudgetext=true;
        hittingjudge=true;
        println("HOMERUN");
    }
}
