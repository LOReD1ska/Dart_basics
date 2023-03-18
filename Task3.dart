void main () {
  var x = 'Hello 1 two 3 4 five';
  poisk(x);
}

poisk (x) {
  var list = x.split ("");
  var list2 = [];
  int? z = 0;

  for (var y = 0; y < list.length ;y++) {
    z = int.tryParse(list[y]);
    if (z == null) {}
    else {
      list2.add(z);
    }
  }
  print(list2);
  return list2;
}