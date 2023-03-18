import 'dart:math';

class Point {
 final StandartPoint = [0, 0, 0];
 final StandsrtVectros = ['j', 'i', 'k'];

 num x, y, z;
 static Point begin = Point.fromxyz (0, 0, 0);
 static Point ForDistanceToStart = Point.fromxyz (0, 0, 0);
 static Point begin2 = Point.fromxyz (1, 1, 1);
 static Point ForVectorConstr = Point.fromxyz (0, 0, 0);

 Point.fromxyz (this.x, this.y, this.z);

 void distanceTo (Point other) {

  var result = [];
  var APoint = [];
  num c = 0;

  APoint.add(x);
  APoint.add(y);
  APoint.add(z);

  for ( var v = 0; v < APoint.length; v++) {
   result.add(APoint[v] - StandartPoint [v]);
   result[v] = result[v] * result[v];
  }

  c = result[0] + result[1] + result[2];
  c = sqrt(c);
  print (c);

 }

 void triangle (int x1, x2, x3, y1, y2, y3, z1, z2, z3) {

  var result1 = [];
  var result2 = [];
  var result3 = [];
  var Apoint1 = [];
  var Apoint2 = [];
  var Apoint3 = [];
  num c1 = 0;
  num c2 = 0;
  num c3 = 0;
  num p = 0;
  num S = 0;

  Apoint1.add(x1);
  Apoint1.add(y1);
  Apoint1.add(z1);
  Apoint2.add(x2);
  Apoint2.add(y2);
  Apoint2.add(z2);
  Apoint3.add(x3);
  Apoint3.add(y3);
  Apoint3.add(z3);

  for ( var v = 0; v < Apoint1.length; v++) {
   result1.add(Apoint2[v] - Apoint1[v]);
   result2.add(Apoint3[v] - Apoint2[v]);
   result3.add(Apoint1[v] - Apoint3[v]);

   result1[v] = result1[v] * result1[v];
   result2[v] = result2[v] * result2[v];
   result3[v] = result3[v] * result3[v];
  }

  c1 = result1[0] + result1[1] + result1[2];
  c1 = sqrt(c1);

  c2 = result2[0] + result2[1] + result2[2];
  c2 = sqrt(c2);

  c3 = result3[0] + result3[1] + result3[2];
  c3 = sqrt(c3);

  p = c1 + c2 + c3;
  p = p/2;

  S = p - c1;
  S = S * p;
  c1 = p - c2;
  S = S * c1;
  c1 = p - c3;
  S = sqrt(S * c1);

  print(S);
 }

 factory Point.VectorToPoint(x, y, z) {
 if ( ForVectorConstr.x == 0 && ForVectorConstr.y == 0 && ForVectorConstr.z == 0 ) {
  ForVectorConstr = Point.fromxyz(x, y, z);
  print('Добавлена точка в векторном виде. Координаты точки в единичном векторе: {$x*j, $y*i, $z*k}');
 }
 else {
  ForVectorConstr = Point.fromxyz(x, y, z);
  print('Точка в векторном виде изменина. Координаты: {$x*j, $y*i, $z*k}');
 }
  return begin2;
 }

 factory Point.Start (x, y, z) {
  if (begin.x == 0 && begin.y == 0 && begin.z == 0){
   begin = Point.fromxyz(x, y, z);
   print('Добавлена новая точка {$x , $y, $z}');
   print('Растояние до начала координат:');
   begin.distanceTo(begin);
  }
  else {
   begin = Point.fromxyz(x, y, z);
   print('Данные точки обновлены. Координаты: {$x, $y, $z}');
   print('Растояние до начала координат:');
   begin.distanceTo(begin);
  }
  return begin;
 }

}

void main() {
 Point p = Point.Start(2, 6, 230);
 p = Point.VectorToPoint(p.x, p.y, p.z);
 Point p2 = Point.Start(55, 3553, 355);
 p2 = Point.VectorToPoint(p2.x, p2.y, p2.z);
}
