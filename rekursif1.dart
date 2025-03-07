int faktorialIteratif(int n) {
  if (n < 0) {
    return -1;
  } else if (n > 1) {
    int faktorial = 1;
    for (int i = n; i > 0; i--) {
      faktorial = faktorial * i; // faktorial *= i;
    } 
    return faktorial;
  } else {
    return 1;
    }
}

  int faktorialRekursif(int n) {
    if (n < 0) {
      return -1;
    } else if (n == 1) {
      return 1;
    } else {
      return n * faktorialIteratif(n -1);
    }
  }

  int fibonacciIteratif(int n) {
    int fibo = 0, f1 = 1, f2 = 1;
    if (n == 1 || n == 2) {
      return 1; 
    } else {
      for (int i = 3; i <= n; i++) {
        fibo = f1 + f2;
        fibo = f2;
      }
    }
    return fibo;
  }
  int fibonacciRekursif(int n) {
    if (n == 1 || n == 2) {
      return 1;
    } else {
      return fibonacciRekursif( n - 1 ) + fibonacciRekursif(n - 2);
    }
  }