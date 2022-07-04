void result() {
    stroke(0);
    strokeWeight(15);
    fill(255);
    line(960, 0, 960, 640);  

    strokeWeight(1);
    fill(255);
    rect(960, 0, 640, 650);

    strokeWeight(2);
    fill(221, 160, 221);
    if (mouseX >= 1250 && mouseX <= 1550 && mouseY >= 560 && mouseY <= 610) {
        fill(218, 112, 214);
    }
    rect(1250, 560, 300, 50);
    fill(0);
    textSize(30);
    text("スタート画面に戻る", 1400, 595);
    textSize(65);
    text(count_a, 1210, 360);
    text("-", 1280, 360);
    text(count_b, 1350, 360);
    if (count_a > count_b) {
        textSize(60);
        text("WINNER   1P", 1275, 270);
        member(r1, g1, b1, 1020, 330);
        member(r1, g1, b1, 1070, 360);
        member(r1, g1, b1, 1120, 390);
        member(r1, g1, b1, 1170, 420);
        member(r1, g1, b1, 1540, 330);
        member(r1, g1, b1, 1490, 360);
        member(r1, g1, b1, 1440, 390);
        member(r1, g1, b1, 1390, 420);
        captain(r1, g1, b1, 1280, 450);
    } else if (count_a < count_b) {
        textSize(60);
        text("WINNER   2P", 1275, 270);
        member(r2, g2, b2, 1020, 330);
        member(r2, g2, b2, 1070, 360);
        member(r2, g2, b2, 1120, 390);
        member(r2, g2, b2, 1170, 420);
        member(r2, g2, b2, 1540, 330);
        member(r2, g2, b2, 1490, 360);
        member(r2, g2, b2, 1440, 390);
        member(r2, g2, b2, 1390, 420);
        captain(r2, g2, b2, 1280, 450);
    } else if (count_a == count_b) {
        textSize(60);
        text("DRAW", 1275, 270);
        member(r1, g1, b1, 1020, 330);
        member(r1, g1, b1, 1070, 360);
        member(r1, g1, b1, 1120, 390);
        member(r1, g1, b1, 1170, 420);
        member(r2, g2, b2, 1540, 330);
        member(r2, g2, b2, 1490, 360);
        member(r2, g2, b2, 1440, 390);
        member(r2, g2, b2, 1390, 420);
    }
}

void captain(int r, int g, int b, int x, int y) {
    fill(r, g, b);
    rotate(radians(-50));
    rect(x - 830, y + 852, 70, 20);
    resetMatrix();
    rotate(radians(-130));
    rect(x - 2470, y + 190, 70, 20);
    resetMatrix();
    fill(255);
    ellipse(x, y, 40, 40);
    ellipse(x + 66, y - 15, 30, 30);
    ellipse(x - 66, y - 15, 30, 30);
    arc(x - 9, y + 4, 10, 10, radians(180), radians(360));
    arc(x + 9, y + 4, 10, 10, radians(180), radians(360));
    fill(0);
    line(x - 40, y - 6, x + 20, y - 6);
    fill(r, g, b);
    arc(x, y - 6, 40, 40, radians(180), radians(360));
    arc(x, y + 80, 60, 120, radians(180), radians(360));
}

void member(int r, int g, int b, int x, int y) {
    fill(255);
    ellipse(x, y, 40, 40);
    arc(x - 9, y + 4, 10, 10, radians(180), radians(360));
    arc(x + 9, y + 4, 10, 10, radians(180), radians(360));
    fill(0);
    line(x - 40, y - 6, x + 20, y - 6);
    fill(r, g, b);
    arc(x, y - 6, 40, 40, radians(180), radians(360));
    arc(x, y + 80, 60, 120, radians(180), radians(360));
}
