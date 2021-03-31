//レンガ線の描画
void draw3(){
  int tatehaba = 19;
  drawLineKabe(kabePoints[0],kabePoints[_renga-1],tatehaba);
  drawLineYuka(yukaPoints,int(tatehaba*1.2));
  drawLengaKabe(kabePoints,tatehaba);
  drawLengaYuka(yukaPoints);
}

void drawLineKabe(PointObj[] start, PointObj[] end,int haba){
  for(int i = 0; i < start.length; i++){
    if(i % haba == 0 || i == start.length-1){
      PointObj s = start[i];
      PointObj e = end[i];
      line(s.x, s.y, e.x, e.y);
    }
  }
}

void drawLineYuka(PointObj[][] start,int tatehaba){
  int haba = 1;
  int line = 0;
  for(int i = 0; i < _renga-1; ){
    for(int j = 0; j < _renga-1; j++){
      if(j % tatehaba == 0){
        line++;
        if(line % 2 == 0) {
          PointObj s = start[min(i,_renga-1)][j];
          PointObj e = start[min(i+haba,_renga-1)][j];
          line(s.x, s.y, e.x, e.y);
        }
      }
    }
    i += haba; //最大値に更新する
    haba += 4; //幅の変化比率分追加する
  }
}

void drawLengaKabe(PointObj[][] start, int tatehaba){
  for(int i = 0; i < _renga-1; i++){
    int haba = 0;
    for(int j = 0; j < _renga-1; j++){
      if(j % 2 ==0 && i % (tatehaba*2) >= tatehaba){
        PointObj s = start[min(haba,_renga-1)][i];
        PointObj e = start[min(haba,_renga-1)][min(i+1,_renga-1)];
        line(s.x, s.y, e.x, e.y);
      } else if ((j % 2 ==1 && i % (tatehaba*2) < tatehaba)){
        PointObj s = start[min(haba,_renga-1)][i];
        PointObj e = start[min(haba,_renga-1)][min(i+1,_renga-1)];
        line(s.x, s.y, e.x, e.y);
      }
      haba = haba+ j+1;
    }
  }
}

void drawLengaYuka(PointObj[][] start){
  for(int i = 0; i < _renga-1; i++){
    int haba = 0;
    for(int j = 0; j < _renga-1; j++){
      if(j % 2 ==1){
        PointObj s = start[min(haba,_renga-1)][i];
        PointObj e = start[min(haba,_renga-1)][min(i+1,_renga-1)];
        line(s.x, s.y, e.x, e.y);
      }
      haba = haba+ j+1;
    }
  }
}
