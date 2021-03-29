//x,yの位置を格納するオブジェクト・クラス
class PointObj{
  float x,y;
  PointObj(float ex, float why) {
    x = ex; y = why;
  }
}
void drawPoint(PointObj obj){
  vertex(obj.x, obj.y);
}
