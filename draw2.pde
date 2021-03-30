//壁や床の分割いちを算出
void draw2(){
  //奥行き
  yokoPoints[0] = bunkatu(minPoints[2], maxPoints[2], yokoPoints[0],_renga -1);
  yokoPoints[1] = bunkatu(minPoints[1], maxPoints[1], yokoPoints[1],_renga -1);
  yokoPoints[2] = bunkatu(minPoints[0], maxPoints[0], yokoPoints[2],_renga -1);
  yokoPoints[3] = bunkatu(minPoints[1], maxPoints[1], yokoPoints[3],_renga -1);
  //縦線
  for(int i = 0; i < _renga; i++){
    kabePoints[i] = bunkatu(yokoPoints[1][i], yokoPoints[0][i], kabePoints[i],_renga -1);
  }
  //床線
  for(int i = 0; i < _renga; i++){
    yukaPoints[i] = bunkatu(yokoPoints[3][i], yokoPoints[2][i], yukaPoints[i],_renga -1);
  }
  stroke(0);
}

PointObj[] bunkatu(PointObj start, PointObj end, PointObj[] objArray, int bunkatu){
  float s_X = start.x;
  float s_Y = start.y;
  float e_X = end.x;
  float e_Y = end.y;
  float mv_X = (e_X - s_X) / (bunkatu);
  float mv_Y = (e_Y - s_Y) / (bunkatu);
  for (int i = 0; i < bunkatu+1; i++){
    float x = s_X + mv_X * i;
    float y = s_Y + mv_Y * i;
    stroke(255,0,0);
    //point(x,y);
    //算出値を格納
    objArray[i] = new PointObj(x,y);
  }
  return objArray;
}
