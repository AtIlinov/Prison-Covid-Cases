Prison []p;//prison class
ArrayList<Alabama> a;//Alabama prisons:used in page 2
ArrayList<Georgia> g;//Georgia prisons:used in page 2
ArrayList<Illinois> il;//Illinois prisons:used in page 2


int page=1;//variable used to switch between pages
int bw=200;//multiple page button: width
int bh=75;//multiple page button: height
int bx, by;//multiple page button: x&y coordinates


void setup() {
  size(1200, 800);
  getData();
  bx=width-250;//button X coordinate
  by=height-250;//button Y coordinate
  textAlign(CENTER);
}


void draw() {
  if (page==1) {
    page1();
  } else if (page==2) {
    page2();
  }
}


void getData() {
  Table data = loadTable("covid_prison.csv", "header");//load Covid/Prison data
  p=new Prison [data.getRowCount()];
  a = new ArrayList<Alabama>();
  g = new ArrayList<Georgia>();
  il = new ArrayList<Illinois>();
  for (int i=0; i<data.getRowCount(); i++) {
    String nm=data.getString(i, 0);//get name
    String st=data.getString(i, 1);//get state
    int in =data.getInt(i, 2);//get number of inmates
    int ic = data.getInt(i, 3);//get number of inmate cases
    int oc = data.getInt(i, 4);//get number of officer cases
    p[i]=new Prison(nm, st, in, ic, oc);


    if (st.equals("Alabama")) {//start extract prison objects into three seperate Array Lists as data needs to be visually toggled on page2
      a.add(new Alabama(nm, ic, oc));
    } else if (st.equals("Georgia")) {
      g.add(new Georgia(nm, ic, oc));
    } else if (st.equals("Illinois")) {
      il.add(new Illinois(nm, ic, oc));
    }//end data extract into array lists
  }
}
