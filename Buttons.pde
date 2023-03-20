int cBy[]={255, 295, 355, 395, 455, 495};//page 2 state data check box y coordinates
boolean[] checkSwitch = new boolean[6];//boolean array used to toggle check boxes


void mousePressed() {
  if (mousePressed) {//start mouse pressed
    if (mouseX>bx && mouseX<bx+bw) {//start page 1&2 toggle button; collision detection: is mouse within required coordinates?
      if (mouseY>by && mouseY<by+bh) {
        if (page==1) {//if current page is 1, increment by 1 when mouse is pressed and within required coordinates
          page++;
        } else {//if current page is 2, decrement by 1
          page--;
        }
      }//end page 1&2 toggle button
    }


    for (int i=0; i<cBy.length; i++) {//start page 2 state data toggles{checkboxes
      if (mouseX>=994 && mouseX<=1004) {//x values for all check boxes the same so only done once
        if (mouseY>=cBy[i] && mouseY<=cBy[i]+10) {//check y values
          checkSwitch[i]=!checkSwitch[i];//switch state of relevant checkbox switch when mouse is pressed and relevant coordinates met
          strokeWeight(1);
          fill(0);
          line(994, cBy[i], 1004, cBy[i]+10);//creates a tick in checkbox when data is displayed:first diagonal line
          line(994, cBy[i]+10, 1004, cBy[i]);//creates a tick in checkbox when data is displayed:second diagonal line
        }
      }
    }//end page 2 state data toggle(checkboxes)
  }//end mouse pressed
}
