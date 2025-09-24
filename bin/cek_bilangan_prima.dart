import 'dart:io'; // Import library untuk input/output di console

void main() {
  print("===== Program Cek Bilangan Prima ====="); // Menampilkan judul program
  stdout.write("Masukkan sebuah bilangan: "); // Meminta user memasukkan angka
  int n = int.parse(stdin.readLineSync()!); // Membaca input user dan ubah jadi integer

  bool prima = true; // Variabel penanda apakah bilangan prima atau bukan

  if (n < 2) {
    prima = false; // Bilangan < 2 bukan bilangan prima
  } else {
    // Perulangan dari 2 sampai n/2 untuk cek faktor pembagi
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) { // Jika habis dibagi i → bukan prima
        prima = false;
        break; // Hentikan loop lebih awal
      }
    }
  }

  // Tampilkan hasil
  if (prima) {
    print("$n adalah bilangan prima");
  } else {
    print("$n bukan bilangan prima");
  }
}
