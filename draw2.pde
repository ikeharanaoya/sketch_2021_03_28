//壁や床の分割いちを算出
void draw2(){
  //縦線
  kabePoints[0] = bunkatu(maxPoints[1], maxPoints[2], kabePoints[0]);
  kabePoints[1] = bunkatu(minPoints[1], minPoints[2], kabePoints[1]);
  //床線
  yukaPoints[0] = bunkatu(maxPoints[0], maxPoints[1], yukaPoints[0]);
  yukaPoints[1] = bunkatu(minPoints[0], minPoints[1], yukaPoints[1]);
  //奥行き
  yokoPoints[0] = bunkatu(maxPoints[0], minPoints[0], yokoPoints[0]);
  yokoPoints[1] = bunkatu(maxPoints[1], minPoints[1], yokoPoints[1]);
  yokoPoints[2] = bunkatu(maxPoints[2], minPoints[2], yokoPoints[2]);
  stroke(0);
}

PointObj[] bunkatu(PointObj start, PointObj end, PointObj[] objArray){
  float s_X = start.x;
  float s_Y = start.y;
  float e_X = end.x;
  float e_Y = end.y;
  float mv_X = (e_X - s_X) / (_bunkatu + 1);
  float mv_Y = (e_Y - s_Y) / (_bunkatu + 1);
  for (int i = 0; i < _bunkatu + 2; i++){
    float x = s_X + mv_X * i;
    float y = s_Y + mv_Y * i;
    stroke(255,0,0);
    point(x,y);
    //算出値を格納
    objArray[i] = new PointObj(x,y);
  }
  return objArray;
}
