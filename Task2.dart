void main() {
  var val1 = 364;
  system(val1);
}
system(val1) {
  var ne = val1;
  var n = 2;
  var x = 0;
  var y = 1;
  var p = 1;
  var list = [];
  while (ne >= 1) {
    list.add(ne % n);
    ne = ne ~/ n;
  }

  print('в двоичной системе:');
  print(list.reversed.join(""));

  while ( x < list.length ) {

    while ( p < x - 1 ) {
      y = y * n;
      p++;
    }

    p = list[x] * y;
    ne = ne + p;
    p = 1;
    y = 2;

    if ( x >= 1 ) {
      p = 0;
    }

    x++;

  }

  print('В десятиричной системе:');
  print(ne);

}