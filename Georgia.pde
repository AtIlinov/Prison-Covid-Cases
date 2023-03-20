class Georgia {//use for page 2
  String name;//prison facility name
  int inCases;//number of inmate cases
  int ofCases;//number of officer cases


  Georgia(String nm, int i, int o) {
    name=nm;
    inCases=i;
    ofCases=o;
  }


  int inGeorg(int i) {//inmate cases part 1
    int x = int(map(i, 0, g.size(), 60, 920));//map x coordinate to graph dimensions
    return(x);//return x coordinate to be plotted and used for line graph
  }


  int inGeorg2(int i) {//inmate cases part 2
    int y = int(map(inCases, 0, 1250, height-40, 45));//map y coordinate (inmate cases) to graph dimensions
    strokeWeight(1);
    ellipse(i, y, 8, 8);//draw circle for each facility
    return(y);//return y coordinate to be plotted and used for line graph
  }


  int ofGeorg(int i) {//officer cases part 1
    int x = int(map(i, 0, g.size(), 60, 920));//map x coordinate to graph dimensions
    return(x);//return x coordinate to be plotted and used for line graph
  }


  int ofGeorg2(int i) {//officer cases part 2
    int y = int(map(ofCases, 0, 1250, height-40, 45));//map y coordinate (officer cases) to graph dimensions
    strokeWeight(1);
    ellipse(i, y, 8, 8);//draw circle for each facility
    return(y);//return y coordinate to be plotted and used for line graph
  }
}
