class Prison {
  String name;//prison facility name
  String state;//prison state
  float numInmates;//number of inmates
  float inCases;//number of inmate cases
  int ofCases;//number of officer cases


  Prison(String nm, String s, float n, float i, int o) {
    name=nm;
    state=s;
    numInmates=n;
    inCases=i;
    ofCases=o;
  }


  void barChart(int loc) {//start barchart display
    int w=7;//the width of each bar
    stroke(100);
    if (inCases/numInmates<0.1) {//if inmate cases are less than 10% of total inmate population make bar green
      fill(132, 227, 124);
      rect(bx, 415, 10, 10);//line graph guide mini square
    } else if (inCases/numInmates>0.75) {//if inmate cases are more than 75% of total inmate population make bar red
      fill(201, 43, 43);
    } else {
      fill(255, 195, 131);//light orange
      rect(bx, 315, 10, 10);////line graph guide mini square
    }
    rect((loc*w+60), (height-numInmates/3.5)-40, w, numInmates/3.5); //barchart: inmate population


    if ((inCases/numInmates)>0.75) {//if inmate cases are more than 75% of total inmate population make bar red
      fill(201, 43, 43);
      rect(bx, 465, 10, 10);//line graph guide mini square
    } else if (inCases/numInmates<0.1) {//if inmate cases are less than 10% of total inmate population make bar green
      fill(132, 227, 124);
    } else {
      fill(255, 132, 0);//dark orange
      rect(bx, 365, 10, 10);//line graph guide mini square
    }
    rect((loc*w+60), (height-inCases/3.5)-40, w, inCases/3.5); //barchart: inmate population
  }//end barchart display


  void prisonInf(int loc) {//start prison information pop-up box

    int w=7;
    textSize(16);
    if (mouseX>(loc*w+60)&&mouseX<(loc*w+67)&&mouseY<(height-40)&&mouseY>(height - (numInmates/3.5+40))) {
      fill(255, 195, 131);
      if (mouseX<width/2) {//pop-up box is on the left side of the screen
        rect(mouseX, mouseY, 600, -75, 10); //pop-up box: prison full information
        fill(0);
        text("Facility: "+ name, (mouseX*2+600)/2, mouseY-55);
        text("Number of inmates: " + numInmates, (mouseX*2+600)/2, mouseY-35);
        text("Number of inmate cases: " + inCases, (mouseX*2+600)/2, mouseY-15);
      } else {//pop-up box is on the right hand side of the screen, preventing it from disappearing and hiding information
        rect(mouseX, mouseY, -600, -75, 10); //pop-up box: prison full information
        fill(0);
        text("Facility: "+ name, (mouseX*2-600)/2, mouseY-55);
        text("Number of inmates: " + numInmates, (mouseX*2-600)/2, mouseY-35);
        text("Number of inmate cases: " + inCases, (mouseX*2-600)/2, mouseY-15);
      }
    }//end prison information pop-up box
  }
}
