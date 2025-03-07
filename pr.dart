import 'dart:io';

Map<String, Map<String, dynamic>> menu = {
  'D': {'jenis': "Dada", 'harga': 2500.00},
  'P': {'jenis': "Paha", 'harga': 2000.00},
  'S': {'jenis': "Sayap", 'harga': 1500.00},
};
Map<int, Map<String, dynamic>> pembelian = {};
double pajak = 0.1;
void beliAyam() {
  print("GEROBAK FRIED CHIKEN");
  print("-----------------------------------------------");
  print("Kode\t\tJenis\t\tHarga");
  print("-----------------------------------------------");
  menu.forEach((kode, item) {
    print("$kode\t\t${item['jenis']}\t\tRp.${item['harga'].toStringAsFixed(2)}");
  });
  print("-----------------------------------------------");

  try {
    stdout.write("Masukan jumlah jenis belanjaan: ");
    int jumlahJenis = int.parse(stdin.readLineSync() ?? '');

    for (int i = 1; i <= jumlahJenis; i++) {
      print("\nJenis belanjaan ke-$i");
      stdout.write("Pilih jenis berdasarkan kode: ");
      String kode = stdin.readLineSync() ?? '';

      if (menu.containsKey(kode)) {
        stdout.write("Berapa potong: ");
        int potong = int.parse(stdin.readLineSync() ?? '');
        pembelian[i] = {
          'jenis': menu[kode]!['jenis'],
          'harga': menu[kode]!['harga'],
          'banyak': potong,
          'jumlah': menu[kode]!['harga'] * potong,
        };
      } else {
        print("Kode tidak valid.");
        i--;
      }
    }
  } catch (e) {
    print("Input tidak valid.");
  }
}

void hitungTotal() {
  double total = 0;
  print("\nTOTAL PEMBELIAN GEROBAK FRIED CHIKEN");
  print("------------------------------------------------------------------------------------------------");
  print("No\t\tJenis\t\tHarga\t\tBanyak\t\tJumlah");
  print("------------------------------------------------------------------------------------------------");
  pembelian.forEach((no, item) {
    print("$no\t\t${item['jenis']}\t\tRp.${item['harga'].toStringAsFixed(2)}\t\t${item['banyak']}\t\tRp.${item['jumlah'].toStringAsFixed(2)}");
    total += item['jumlah'];
  });
  print("------------------------------------------------------------------------------------------------");

  double pajakTotal = total * pajak;
  double totalDenganPajak = total + pajakTotal;

  print("Total:\t\t\t\t\t\t\t\tRp.${total.toStringAsFixed(2)}");
  print("Pajak (10%):\t\t\t\t\t\t\tRp.${pajakTotal.toStringAsFixed(2)}");
  print("Total + Pajak:\t\t\t\t\t\t\tRp.${totalDenganPajak.toStringAsFixed(2)}");
}

void main() {
  beliAyam();
  hitungTotal();
}