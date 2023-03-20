void page2() {
  String states []={"ALABAMA", "GEORGIA", "ILLINOIS"};//used for graph guide
  String chGuide []={"Inmate Cases", "Officer Cases"};//used for graph guide
  int pI=0;//inmate population increment to be used in first for loop for creation of line graph grid
  color colours []= {#E5D131, #BFB45E, #C45566, #BFA9AD, #698141, #959D87}; //colours in hex - seperate state graphs, check boxes and states
  int cBy[]={255, 295, 355, 395, 455, 495};//page 2 state data check box y coordinates


  background(201, 194, 181);//page background


  strokeWeight(0);//start page title & page instructions
  fill(240, 233, 223);
  rect(bx-30, 20, 260, 190, 5);//page title background
  rect(bx-30, height-160, 260, 140, 5);//page instructions background
  fill(0);//text colour
  strokeWeight(1);
  stroke(0);
  line(bx-10, 115, width-40, 115);
  textSize(22);
  text("COVID-19 CASES \n IN \n STATE PRISONS \n INMATE CASES \n VS\n OFFICER CASES", (bx*2+bw)/2, 50);
  textSize(16);
  text("Instructions \n Please tick at least two boxes \n to start comparing data! \n For interesting patterns keep an eye on \n areas where officer cases go higher \n than inmate cases and vice versa.", (bx*2+bw)/2, height-135);//end page title & page instructions


  stroke(255, 100);
  fill(255);
  textSize(14);
  for (float i=height-40; i>0; i-=(250/1.75)) {
    line(30, i, 908, i);
    text(pI, 45, i-2);//line graph figures - 0,250,500,750 etc.
    pI+=250;
  }//end horizontal grid lines


  line(60, height-10, 60, 10);//vertical grid line


  textSize(18);//start state graph guide
  for (int i=0; i<states.length; i++) {
    text(states[i], 1000, i*100+240);
  }//end state graph guide


  for (int j=0; j<cBy.length; j++) {//start graph guide checkboxes
    stroke(150);
    fill(colours[j]);
    rect(994, cBy[j], 10, 10);//draws a tick box(button)
    fill(255);
    if ((j+1)%2!=0) {//modulo used to pair the relevant text with the relevant tick box
      text(chGuide[0], 1060, cBy[j]+9);//all odd numbers of the cBy array paired with Inmate Cases
    } else {
      text(chGuide[1], 1060, cBy[j]+9);//all even numbers of the cBy array paired with Inmate Cases
    }
  }//end graph guide check boxes


  if (checkSwitch[0]) {//start Alabama inmate cases checkbox
    strokeWeight(1);
    stroke(100);
    line(994, cBy[0], 1004, cBy[0]+10);//creates a tick in checkbox when data is displayed:first diagonal line
    line(994, cBy[0]+10, 1004, cBy[0]);//creates a tick in checkbox when data is displayed:second diagonal line
    fill(colours[0]);
    stroke(colours[0]);
    for (int i=0; i<a.size(); i++) {
      int x = a.get(i).inAlab(i);//returns an x coordinate corresponding to inmate cases for every object in the Alabama array
      int y = a.get(i).inAlab2(a.get(i).inAlab(i));//draws an ellipse and returns a y coordinate
      if (i>0) {//first item in loop is used to create the first ellipse on the graph
        int prevX = a.get(i-1).inAlab(i-1);//previous x coordinate (before current)
        int prevY = a.get(i-1).inAlab2(a.get(i-1).inAlab(i-1));//previous y coordinate (before current)
        line(prevX, prevY, x, y);//line between previous and current x&y coordinates are used to draw a line between two points
      }
    }
  }//end Alabama inmate cases checkbox
  if (checkSwitch[1]) {//start Alabama officer cases checkbox
    strokeWeight(1);
    stroke(100);
    line(994, cBy[1], 1004, cBy[1]+10);//creates a tick in checkbox when data is displayed:first diagonal line
    line(994, cBy[1]+10, 1004, cBy[1]);//creates a tick in checkbox when data is displayed:second diagonal line
    fill(colours[1]);
    stroke(colours[1]);
    for (int i=0; i<a.size(); i++) {
      int x = a.get(i).ofAlab(i);
      int y = a.get(i).ofAlab2(a.get(i).ofAlab(i));
      if (i>0) {
        int prevX = a.get(i-1).ofAlab(i-1);
        int prevY = a.get(i-1).ofAlab2(a.get(i-1).ofAlab(i-1));
        line(prevX, prevY, x, y);
      }
    }
  }//end Alabama officer cases checkbox
  if (checkSwitch[2]) {//start Georgia inmate cases checkbox
      strokeWeight(1);
    stroke(100);
    line(994, cBy[2], 1004, cBy[2]+10);//creates a tick in checkbox when data is displayed:first diagonal line
    line(994, cBy[2]+10, 1004, cBy[2]);//creates a tick in checkbox when data is displayed:second diagonal line
    fill(colours[2]);
    stroke(colours[2]);
    for (int i=0; i<g.size(); i++) {
      int x = g.get(i).inGeorg(i);
      int y = g.get(i).inGeorg2(g.get(i).inGeorg(i));
      if (i>0) {
        int prevX = g.get(i-1).inGeorg(i-1);
        int prevY = g.get(i-1).inGeorg2(g.get(i-1).inGeorg(i-1));
        line(prevX, prevY, x, y);
      }
    }
  }//end Georgia inmate cases checkbox
  if (checkSwitch[3]) {//start Georgia officer cases checkbox
      strokeWeight(1);
    stroke(100);
    line(994, cBy[3], 1004, cBy[3]+10);//creates a tick in checkbox when data is displayed:first diagonal line
    line(994, cBy[3]+10, 1004, cBy[3]);//creates a tick in checkbox when data is displayed:second diagonal line
    fill(colours[3]);
    stroke(colours[3]);
    for (int i=0; i<g.size(); i++) {
      int x = g.get(i).ofGeorg(i);
      int y = g.get(i).ofGeorg2(g.get(i).ofGeorg(i));
      if (i>0) {
        int prevX = g.get(i-1).ofGeorg(i-1);
        int prevY = g.get(i-1).ofGeorg2(g.get(i-1).ofGeorg(i-1));
        line(prevX, prevY, x, y);
      }
    }
  }//end Georgia officer cases checkbox
  if (checkSwitch[4]) {//start Illinois inmate cases checkbox
      strokeWeight(1);
    stroke(100);
    line(994, cBy[4], 1004, cBy[4]+10);//creates a tick in checkbox when data is displayed:first diagonal line
    line(994, cBy[4]+10, 1004, cBy[4]);//creates a tick in checkbox when data is displayed:second diagonal line
    fill(colours[4]);
    stroke(colours[4]);
    for (int i=0; i<il.size(); i++) {
      int x = il.get(i).inIlli(i);
      int y = il.get(i).inIlli2(il.get(i).inIlli(i));
      if (i>0) {
        int prevX = il.get(i-1).inIlli(i-1);
        int prevY = il.get(i-1).inIlli2(il.get(i-1).inIlli(i-1));
        line(prevX, prevY, x, y);
      }
    }
  }//end Illinoi inmate cases checkbox
  if (checkSwitch[5]) {//start Illinois officer cases checkbox
      strokeWeight(1);
    stroke(100);
    line(994, cBy[5], 1004, cBy[5]+10);//creates a tick in checkbox when data is displayed:first diagonal line
    line(994, cBy[5]+10, 1004, cBy[5]);//creates a tick in checkbox when data is displayed:second diagonal line
    fill(colours[5]);
    stroke(colours[5]);
    for (int i=0; i<il.size(); i++) {
      int x = il.get(i).ofIlli(i);
      int y = il.get(i).ofIlli2(il.get(i).ofIlli(i));
      if (i>0) {
        int prevX = il.get(i-1).ofIlli(i-1);
        int prevY = il.get(i-1).ofIlli2(il.get(i-1).ofIlli(i-1));
        line(prevX, prevY, x, y);
      }
    }
  }//end Illinois officer cases checkbox


  if (mouseX>bx && mouseX<bx+bw&&mouseY>by && mouseY<by+bh) {//second page button start;when hovered over
    strokeWeight(1);
    stroke(0);
    fill(150);
  } else {//when not hovered over
    fill(240, 233, 223);
  }
  rect(bx, by, bw, bh, 5);//button box
  fill(0);
  textSize(18);
  text("Inmate Population \n vs. \n Inmate Cases", (bx*2+bw)/2, by+20); //second page button end


  fill(255);//start of vertical text; moves text to the correct position
  translate(20, height/2);//moves the text below to the correct position
  rotate(PI*1.5);//rotates text clockwise by 270 degrees
  text("NUMBER OF INFECTED INMATES/OFFICERS", 0, 0);//end of vertical text
}
