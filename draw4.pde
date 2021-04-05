//扉の描画処理
void draw4(){
  //影の描画処理
  doa(20,15,6,4,1,4);
  doa(11,7,9,8,4,8);
  doa(4,1,9,12,6,12);
}

void doa(int kage_s,int kage_e,int doa_up_x,int doa_up_y, int doa_douwn_x,int doa_douwn_y){
  int start = _renga/25*(kage_s);
  int end = _renga/25*(kage_e);
  int tate = _renga/10*9;  
  //影の描画
  PointObj obj1 = kabePoints[start][1];
  PointObj obj2 = kabePoints[end][1];
  PointObj obj3 = kabePoints[end][tate];
  PointObj obj4 = kabePoints[start][tate];
  drawDoa(obj1,obj2,obj3,obj4,#000000,#401216,5);
  //扉の描画
  obj1 = yukaPoints[start-doa_douwn_x][1+doa_douwn_y];
  obj2 = kabePoints[end][1];
  obj3 = kabePoints[end][tate];
  obj4 = kabePoints[start-doa_up_x][tate+doa_up_y];
  drawDoa(obj1,obj2,obj3,obj4,#733030,#401216,3);  
}

void drawDoa(PointObj ob1,PointObj ob2,PointObj ob3,PointObj ob4,color iro,color hutiiro,int hutiSaizu){
  fill(iro);
  stroke(hutiiro);
  strokeWeight(hutiSaizu);
  //四角形を描く
  quad(ob1.x,ob1.y,
    ob2.x,ob2.y,
    ob3.x,ob3.y,
    ob4.x,ob4.y);
  strokeWeight(1);
  fill(255);
}
