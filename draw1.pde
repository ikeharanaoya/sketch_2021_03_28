void draw1(){
  //幅を算出
  float habaX =(wd) * _ritu * 0.4;
  float habaY= (wd) * _ritu * 0.4;
  maxPoints = sikakuPoint(0,0,habaX*4.5,habaY*4.5,maxPoints);

  float pointX = +habaX*3.62*cos(radians(_angle-73));
  float PointY = +habaY*3.62*sin(radians(_angle-73));
  minPoints = sikakuPoint(pointX,PointY
                          ,habaX/2,habaY/2,minPoints);
  drawQuad(maxPoints);
  drawQuad(minPoints);
  point(pointX,PointY);
}

PointObj[] sikakuPoint(float centX, float centY, float habaX, float habaY,PointObj[] objArray) {
  for(int i = 0; i < 4; i++){
    //角度を取得
    float angle = _angle + (i *(90));
    float rad;
    float x,y;
    //点の位置を算出
    if( i % 2 ==0){
      rad = radians(angle-8);
    } else {
      rad = radians(angle+8);
    }
    x = centX + (habaX * cos(rad));
    y = centY + (habaY * sin(rad));
    //算出値を格納
    objArray[i] = new PointObj(x,y);
  }
  return objArray;
}

void drawQuad(PointObj[] objArray){
  //四角形を描く
  quad(objArray[0].x,objArray[0].y,
    objArray[1].x,objArray[1].y,
    objArray[2].x,objArray[2].y,
    objArray[3].x,objArray[3].y);
}
