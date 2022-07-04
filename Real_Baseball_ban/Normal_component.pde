void normal_groundcomponent() { // 画面構成
    normal_ground();
    normal_batterbox();
    strikezone();
    if (sx<2) {
        pitch=false;
        hittingballjudge=true;
    }
    pitcher();
    if (buttingfirst)
    {

        if (swing)
        {
            powerbat(150, 450);
            right_swing_batter(r1, g1, b1, 310, 450);
        } else
        {
            powerbat(310, 450);
            right_batter(r1, g1, b1, 310, 450);
        }
        human(r2, g2, b2, 580, 150);
    }


    if (buttingfirst == false)
    {
        if (swing)
        {
            powerbat(150, 450);
            right_swing_batter(r2, g2, b2, 310, 450);
        } else
        {
            powerbat(310, 450);
            right_batter(r2, g2, b2, 310, 450);
        }
        human(r1, g1, b1, 580, 150);
    }
    normal_ball();
    bat_cursor();
}

void normal_judgement_component() {
}
