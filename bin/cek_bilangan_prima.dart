import 'dart:io'; // Import library untuk input/output di console

void main() {
  print("===== Program Cek Bilangan ====="); // Menampilkan judul program ke layar
  
  stdout.write("Masukkan sebuah bilangan: "); // Meminta user untuk memasukkan angka
  int n = int.parse(stdin.readLineSync()!); // Membaca input user (string) lalu konversi ke integer

  print("Kamu memasukkan angka: $n"); // Menampilkan kembali angka yang dimasukkan user
}
