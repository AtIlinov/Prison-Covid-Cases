void page1() {
  int perfL=0;//inmate population increment to be used in first for loop for creation of bar chart grid
  int perfoLine []={0, 196, 602, 847};//perforated grid line seperating the three states
  String states []={"", "ALABAMA", "GEORGIA", "ILLINOIS"};
  String chGuide []={"Total Inmate Population", "Total Inmate Cases", "Less Than 10% Infected", "More Than 75% Infected"};


  background(147, 143, 136);//page background


  strokeWeight(0);//start page title & page instructions
  fill(240, 233, 223);
  rect(bx-30, 20, 260, 190, 5);//page title background
    rect(bx-30, height-160, 260, 140, 5);//page instructions background
  fill(0);//text colour
  strokeWeight(1);
  line(bx-10, 115, width-40, 115);
  textFont(createFont("Baskerville Old Face", 22));//text font
  text("COVID-19 CASES \n IN \n STATE PRISONS \n INMATE POPULATION \n VS\n INMATE CASES", (bx*2+bw)/2, 50);
  textSize(16);
  text("Instructions \n Hover over the barchart to receive \n more information on each prison. \n The graph is colour coded. \n What can be deduced \n by following the colour guide?", (bx*2+bw)/2, height-135);//end page title & page instructions


  for (int i=1; i<perfoLine.length; i++) {//start state highlight when mouse hovers over
    if (mouseX>=perfoLine[i-1]+60 && mouseX<=perfoLine[i]+60) {
      fill(255, 100);
      rect(perfoLine[i-1]+60, 0, (perfoLine[i]+60)-(perfoLine[i-1]+60), height);
    }
  }//end state highlight when mouse hovers over


  strokeWeight(1);//start grid horizontal lines
  stroke(255, 100);
  textSize(14);
  fill(255);
  for (float i=height-40; i>0; i-=(250/3.5)) {
    line(30, i, 908, i);//line to be repeated
    text(perfL, 45, i-2);//bar chart figures - 0,250,500,750 etc.
    perfL+=250;
  }//end grid horizontal line


  line(60, height-10, 60, 10);//solid vertical line


  textSize(18);//start perforated vertical grid lines
  for (int i=1; i<4; i++) {
    for (int j=height-10; j>0; j-=50) {
      line(perfoLine[i]+60, j, perfoLine[i]+60, j-30);
    }
    text(states[i], (120+perfoLine[i]+perfoLine[i-1])/2, height-20);
  }//end perforated vertical grid lines


  if (mouseX>bx && mouseX<bx+bw&&mouseY>by && mouseY<by+bh) {//second page button start;when hovered over
    strokeWeight(1);
    stroke(0);
    fill(150);
  } else {//when not hovered over
    fill(240, 233, 223);
  }
  rect(bx, by, bw, bh, 5);//button box
  fill(0);
  //textSize(18);
  text("Inmate Cases \n vs. \n Officer Cases", (bx*2+bw)/2, by+20); //second page button end


  fill(255);//start chart data colour guide
  for (int i=0; i<4; i++) {
    text(chGuide[i], (bx*2+bw)/2+10, i*50+325);
  }//end chart data colour guide


  strokeWeight(0);//start bar chart data display
  stroke(255);
  for (int i=0; i<p.length; i++) {//bar chart
    p[i].barChart(i);
  }
  for (int i=0; i<p.length; i++) {//prison information pop-up box
    p[i].prisonInf(i);
  }//end bar chart data display


  fill(255);//start of vertical text; moves text to the correct position
  translate(20, height/2);
  rotate(PI*1.5);//rotates text clockwise by 270 degrees
  text("NUMBER OF PRISON INMATES", 0, 0);//end of vertical text
}
