void main() {
  // Variabel dan tipe data
  String nama = "Adelia";
  int umur = 19;

  // Menampilkan informasi
  print("Nama: $nama");
  print("Umur: $umur");

  // Pengkondisian
  if (umur >= 19) {
    print("Dewasa");
  } else {
    print("Belum dewasa");
  }

  // Perulangan
  for (int i = 1; i <= 3; i++) {
    print("Angka ke-$i");
  }

  // Fungsi
  int tambah(int a, int b) {
    return a + b;
  }

  // Memanggil fungsi
  int hasil = tambah(05, 28);
  print("Hasil: $hasil");
}