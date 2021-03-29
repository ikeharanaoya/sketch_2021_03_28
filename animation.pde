void animation(){
  //kakudai();//拡大
  //kaiten();//回転
}

void kakudai(){
  //拡大
  _ritu += plasu;
  if(_ritu > 0.4){
    plasu *= -1;
  }else if(_ritu<0.03){
    plasu *= -1;
  }
}

void kaiten(){
  //回転
  _angle += _anglePlasu;
  if(_angle > 360){
    _angle = 0;
  }
}
