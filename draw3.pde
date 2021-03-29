//レンガ線の描画
void draw3(){
  drawLine(kabePoints[0],kabePoints[_renga-1],6);
  drawLine(yukaPoints[0],yukaPoints[_renga-1],6);
  //drawLenga(kabePoints,2);
  //drawLenga(yukaPoints,2);
  println(_renga);
  int haba = 0;
  for(int i = 0; i < _renga-1; i++){
    PointObj s = kabePoints[min(haba,_renga-1)][i];
    PointObj e = kabePoints[min(haba,_renga-1)][min(i+6,_renga-1)];
    haba = haba+ i+1;
    line(s.x, s.y, e.x, e.y);
  }
}

void drawLine(PointObj[] start, PointObj[] end,int haba){
  for(int i = 0; i < start.length; i++){
    if(i % haba == 0){
      PointObj s = start[i];
      PointObj e = end[i];
      line(s.x, s.y, e.x, e.y);
    }
  }
}

void drawLenga(PointObj[][] start, int haba){
  for(int i = 0; i < start.length; i++){
    for(int j = 0; j < start[i].length-1; j++){
      if((i) % haba == 0){
        PointObj s = start[i][j];
        PointObj e = start[i][j+1];
        line(s.x, s.y, e.x, e.y);
      }
    }
  }
}
