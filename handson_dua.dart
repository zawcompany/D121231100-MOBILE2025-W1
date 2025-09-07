import 'dart:io';

int fibonacci(int N) {
  if (N == 0) {
    return 0;
  } else if (N == 1) {
    return 1;
  } else {
    return fibonacci(N - 1) + fibonacci(N - 2);
  }
}

int faktorial(int N) {
  if (N <= 1) {
    return 1;
  } else {
    return N * faktorial(N - 1);
  }
}

String angka_biner(int N) {
  if (N == 0) {
    return "0";
  }

  int A = N;
  String biner = "";
  while (A > 0) {
    biner = (A % 2).toString() + biner;
    A = A ~/ 2;
  }
  return biner;
}

void main() {
  stdout.write("Silahkan masukkan sebuah bilangan bulat: ");
  int angka = int.parse(stdin.readLineSync()!);

  print("----HASIL----");
  print("Baris Fibonacci ke-$angka = ${fibonacci(angka)}");
  print("Faktorial dari $angka = ${faktorial(angka)}");
  print("Biner dari $angka = ${angka_biner(angka)}");
}
