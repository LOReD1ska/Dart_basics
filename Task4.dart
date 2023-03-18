void main () {
  var list = ["ALT", "CTRL", "SPACEBAR", "ALT", "ALT", "SPACEBAR"];
  word(list);
}

word(list){
  var map = Map();
  for (var x = 0; x < list.length; x++) {
    if (map.containsKey(list[x]) == false) {
      map[list[x]] = 1;
    }
    else {
      map[list[x]]++;
    }
  }
  print(map);
  return map;
}