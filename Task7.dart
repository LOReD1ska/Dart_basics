extension on num {
 void koren (num n, num A ) {
    if (n < 1 || n == 1) {
      print('Корень степень не может быть равен 0 или 1');
    }
    else {
      var xr = [];
      num? n1 = n;
      num? A1 = A;

      num nn = n1 - 1;
      num x = 1;

      num ps = 1;
      int px = 0;
      num b = 0;
      num scob = 0;
      num l = x;
      num xxx = 0;

      b = x;
      xr.add(b);

      do {
        ps = 1;
        num l = b;
        for (; ps > nn || ps < nn; ps++) {
          l = l * b;
        }
        l = A / l;

        scob = nn * b;

        b = scob + l;
        b = b / n;

        xr.add(b);

        px++;
      }
      while (xr[px] < xr[px - 1] || xr[px] > xr[px - 1]);
      xxx = xr[px] % x;
      if (xxx > 0 || xxx < 0) {
        throw 'Из $A1 не может быть извлечён корень $n1 степени';
      }
      print(xr[px]);
    }
  }
}

void main () {

  num A = 512;
  num n = 2;
  A.koren(n, A);

}