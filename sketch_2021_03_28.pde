float wd, he;
float _ritu = 0.30; //倍率
float plasu = 0.0005; //倍率_変化比率
float _angle = 45;//角度
float _anglePlasu = 0.4; //角度_変化比率
int _bunkatu = 13;// 分割数

PointObj[] minPoints = new PointObj[4];
PointObj[] maxPoints = new PointObj[4];
PointObj[][] kabePoints = new PointObj[2][_bunkatu+2];
PointObj[][] yukaPoints = new PointObj[2][_bunkatu+2];
PointObj[][] yokoPoints = new PointObj[3][_bunkatu+2];

void setup(){
  size(800, 600);
  smooth();
  wd = width;
  he = height;
  background(255);
}

void draw(){
  background(255);
  translate(width/2, height/2);
  draw1();
  draw2();
  animation();
}
