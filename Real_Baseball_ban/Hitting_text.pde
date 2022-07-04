void hittingresulttext() {
    textSize(48);
    if (butterscore==0) {
        if (fair==false || strike) {
            fill(0, 255, 255);
            text("Foul", 480, 200);
        } else if (fair && doubleplay) {
            fill(255, 0, 0);
            text("Double Play", 480, 200);
        } else {
                fill(255, 0, 0);
            if (fensebounce) {
                text("FINEPLAY!!", 480, 200);
            }else{
                text("OUT", 480, 200);
            }
        }
    }
    if (butterscore==1) {
        fill(0, 255, 0);
        text("1BH", 480, 200);
    }
    if (butterscore==2) {
        fill(0, 255, 0);
        text("2BH", 480, 200);
    }
    if (butterscore==3) {
        fill(0, 255, 0);
        text("3BH", 480, 200);
    }
    if (butterscore==4) {
        fill(0, 255, 0);
        text("HOMERUN", 480, 200);
    }
}
