void strikejudgetext() { //ストライクボール表示
    judgetext=true;
    println(judgetext);
    textSize(32);
    if (strike) { // ストライク
        strikecount++;
        println("strike"+strikecount);
        println("Strike");
    } else { //ボール
        ballcount++;
        println(ballcount);
        println("Ball");
    }
    if (strike) {
        fill(255, 255, 0);
        text("Strike", 480, 200);
    } else {
        fill(0, 255, 122);
        text("Ball", 480, 200);
    }
}
