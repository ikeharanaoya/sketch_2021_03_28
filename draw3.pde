//レンガ線の描画
void draw3(){
  
}

void drawLine(PointObj[] start, PointObj[] end){
  for(int i = 0; i < start.length; i++){
    PointObj s = start[i];
    PointObj e = end[i];
    line(s.x, s.y, e.x, e.y);
  }
}
