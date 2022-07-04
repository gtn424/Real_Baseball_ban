
void board() { //右画面全体
    noStroke();
    fill(255);
    rect(960, 0, 650, 650);
    scoreboard();
}

void scoreboard() { //スコアボード
    BSO();
    BSOtext();
    turntext();
    scorecounttext();
    runnerpreview();
    electric_bulletin_board();
}

void BSO() {  //BSO表示
    stroke(0);
    noFill();
    strokeWeight(2);
    rect(990, 450, 300, 150);

    if (strikecount!=3 && ballcount!=4) {
        if (strikecount!=0) {
            noStroke();
            fill(255, 255, 0);
            ellipse(1160, 525, 30, 30);
            if (strikecount==2) {
                ellipse(1195, 525, 30, 30);
            }
        }

        if (ballcount!=0) {
            noStroke();
            fill(0, 255, 122);
            ellipse(1160, 480, 30, 30);
            if (ballcount>=2) {
                ellipse(1195, 480, 30, 30);
            }
            if (ballcount==3) {
                ellipse(1230, 480, 30, 30);
            }
        }
    }


    if (outcount!=0 && outcount!=3) {
        noStroke();
        fill(255, 0, 0);
        ellipse(1160, 570, 30, 30);
        if (outcount==2) {
            ellipse(1195, 570, 30, 30);
        }
    }
}

void runnerpreview() {
    stroke(0);
    fill(255);
    if (runnercount[1]) {
        fill(255, 255, 0);
    }
    strokeWeight(2);
    quad(1525, 500, 1475, 525, 1525, 550, 1575, 525);

    fill(255);
    if (runnercount[2]) {
        fill(255, 255, 0);
    }
    strokeWeight(2);
    quad(1445, 450, 1395, 475, 1445, 500, 1495, 475);

    fill(255);
    if (runnercount[3]) {
        fill(255, 255, 0);
    }
    strokeWeight(2);
    quad(1370, 500, 1320, 525, 1370, 550, 1420, 525);
}

void operation()
{
   fill(0,255,0,100);
   rect(970,190,625,240);
    
    
    fill(0);
    textSize(30);
    text ("投手操作",1047,220);
    text("打者操作",1047,340);
    
    textSize(20);
    text("・Spaceキーで投球準備→Enterキーで投球",1190,255);
    text("・←, →キーで横方向の変化量調節",1152,285);
    
    text("・マウスでバットカーソル移動",1137,375);
    text("・左クリックでスイング",1107,405);

}
