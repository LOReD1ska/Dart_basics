void main () {
  var listData = ['one', 'two', 'three', 'cat', 'dog'];
  number(listData);
}
  void number(listData) {
    var listResult = [];
    for (var x = 0; x < listData.length; x++) {
      switch (listData[x]) {
        case 'zero':
          listResult.add(0);
          break;
        case 'one':
          listResult.add(1);
          break;
        case 'two':
          listResult.add(2);
          break;
        case 'three':
          listResult.add(3);
          break;
        case 'four':
          listResult.add(4);
          break;
        case 'five':
          listResult.add(5);
          break;
        case 'six':
          listResult.add(6);
          break;
        case 'seven':
          listResult.add(7);
          break;
        case 'eight':
          listResult.add(8);
          break;
        case 'nine':
          listResult.add(9);
          break;
        default:
          break;
      }
    }
    print(listResult);
  }
