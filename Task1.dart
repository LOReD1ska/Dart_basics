void main() {
  int b=36755215;
  int a=1237680;
  int number = 562975;
  LCMGCD(a, b);
  Jojo(number);
}
LCMGCD (a, b) {
  int gcd = 0;
  int second = 0;
  int lcm = 0;

  if (a < b) {
    lcm = b;
    b = a;
    a = lcm;
  }

  gcd = a;
  second = b;

  while (second > 0) {
    lcm = second;
    second = gcd % second;
    gcd = lcm;
  }

  lcm = a - b;
  lcm = lcm ~/ gcd;

  print('НОД:');
  print(gcd);
  print('НОК:');
  print(lcm);
}

Jojo (number) {
  int z = 0;
  int n = 2;
  var spisok = [];
  print('Разложение на множетели:');
  for (;number>1;) {
    z = number % n;
    if (z>0) {
      n++;
    }
    else {
      number = number~/n;
      print(n);
      spisok.add(n);
      print('*');
      if (number == n) {
        number = number~/n;
        spisok.add(n);
        print(n);
        return spisok;
      }
    }
  }
}