import 'dart:io'; // Import library untuk input/output di console

void main() {
  print("===== Program Cek Bilangan Prima ====="); // Menampilkan judul program
  stdout.write("Masukkan sebuah bilangan: "); // Meminta user memasukkan angka
  int n = int.parse(stdin.readLineSync()!); // Membaca input user dan ubah jadi integer

// Panggil fungsi cekPrima dan tampilkan hasil
  if (cekPrima(n)) {
    print("$n adalah bilangan prima"); // Jika true
  } else {
    print("$n bukan bilangan prima"); // Jika false
  }
}

// Fungsi untuk mengecek apakah suatu bilangan prima
bool cekPrima(int n) {
  if (n < 2) return false; // Bilangan kurang dari 2 bukan prima
  for (int i = 2; i <= n ~/ 2; i++) { // Loop dari 2 sampai n/2
    if (n % i == 0) return false; // Jika ada pembagi selain 1 dan n → bukan prima
  }
  return true; // Jika tidak ada pembagi → prima
}
