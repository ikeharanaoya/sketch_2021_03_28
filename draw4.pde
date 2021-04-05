//扉の描画処理
void draw4(){
  //影の描画処理
  doa(20,15);
  doa(11,7);
  doa(4,1);
}

void doa(int s,int e){
  fill(0);
  int start = _renga/25*(s);
  int end = _renga/25*(e);
  int tate = _renga/10*9;  
  PointObj obj1 = kabePoints[start][0];
  PointObj obj2 = kabePoints[end][0];
  PointObj obj3 = kabePoints[end][tate];
  PointObj obj4 = kabePoints[start][tate];
  drawDoa(obj1,obj2,obj3,obj4);
  fill(255);
}

void drawDoa(PointObj ob1,PointObj ob2,PointObj ob3,PointObj ob4){
  //四角形を描く
  quad(ob1.x,ob1.y,
    ob2.x,ob2.y,
    ob3.x,ob3.y,
    ob4.x,ob4.y);
}
