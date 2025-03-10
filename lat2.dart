import 'dart:io';

void generateKombinasi(List<String> karakter, int panjang, [String prefix = '']) {
  if (panjang == 0) {
    print(prefix);
    return;
  }
  for (var k in karakter) {
    generateKombinasi(karakter, panjang - 1, "$prefix$k");
  }
}

String generateHuruf(int n) => List.generate(n, (i) => String.fromCharCode(97 + i)).join(' ');

void main() {
  stdout.write('Masukkan panjang karakter: ');
  int panjang = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if (panjang <= 0) return;

  var start = DateTime.now();
  var karakter = generateHuruf(panjang).split(' ');
  generateKombinasi(karakter, panjang);
  print("Waktu eksekusi: ${DateTime.now().difference(start).inMilliseconds} ms");
}
