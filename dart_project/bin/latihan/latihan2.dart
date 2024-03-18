import 'dart:io';
import 'dart:math';

void main() {
  // Program 1: Memeriksa kelayakan pemilih
  // int usia = int.parse(stdin.readLineSync()!);
  int usia = int.parse(stdin.readLineSync()!);
  if (usia >= 17) {
    print("Anda memenuhi syarat untuk memilih!");
  } else {
    print("Maaf, Anda belum cukup umur untuk memilih.");
  }

  // Program 2: Mencetak jenis angka
  int angka = int.parse(stdin.readLineSync()!);
  switch (angka) {
    case 0:
      print("Angka tersebut adalah nol.");
      break;
    case 1: // case positive
      print("Angka tersebut positif.");
      break;
    default:
      print("Angka tersebut negatif.");
  }

  // Program 3: Menghitung faktorial
  int faktorial = 1;
  int angkaFaktorial = int.parse(stdin.readLineSync()!);
  while (angkaFaktorial > 0) {
    faktorial *= angkaFaktorial;
    angkaFaktorial--;
  }
  print("Faktorial dari $angkaFaktorial adalah $faktorial");

  // Program 4: Menebak angka
  int tebakan;
  int angkaRahasia = 5; // Ubah nilai ini untuk angka rahasia yang berbeda
  do {
    print("Masukkan tebakan Anda (1-10): ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan != angkaRahasia) {
      print("Tebakan Anda salah!");
    }
  } while (tebakan != angkaRahasia);
  print("Selamat! Tebakan Anda benar!");

  // Program 5: Mencetak elemen daftar secara terbalik
  List<String> daftar = ["Satu", "Dua", "Tiga", "Empat", "Lima"];
  for (var item in daftar.reversed) {
    print(item);
  }

  // Program 6: Memeriksa tahun kabisat
  int tahun = int.parse(stdin.readLineSync()!);
  if (tahun % 4 == 0) {
    if (tahun % 100 == 0 && tahun % 400 != 0) {
      print("$tahun bukan tahun kabisat");
    } else {
      print("$tahun adalah tahun kabisat");
    }
  } else {
    print("$tahun bukan tahun kabisat");
  }

  // Program 7: Mencetak jenis hari
  String hari = stdin.readLineSync()!;
  switch (hari.toLowerCase()) {
    case "senin":
    case "selasa":
    case "rabu":
    case "kamis":
    case "jumat":
      print("$hari adalah hari kerja");
      break;
    case "sabtu":
    case "minggu":
      print("$hari adalah akhir pekan");
      break;
    default:
      print("Hari yang Anda masukkan tidak valid.");
  }

  // Program 8: Menghitung jumlah digit
  int angkaDigit = int.parse(stdin.readLineSync()!);
  int jumlahDigit = 0;
  while (angkaDigit > 0) {
    angkaDigit ~/= 10;
    jumlahDigit++;
  }
  print("Jumlah digit dari $angkaDigit adalah $jumlahDigit");

  // Program 9: Simulasi permainan tebak angka
  Random random = Random();
  int angkaRahasiaTebak = random.nextInt(100) + 1;
  int tebakanTebak;
  do {
    print("Masukkan tebakan Anda (1-100): ");
    tebakanTebak = int.parse(stdin.readLineSync()!);
    if (tebakanTebak < angkaRahasiaTebak) {
      print("Tebakan Anda terlalu kecil!");
    } else if (tebakanTebak > angkaRahasiaTebak) {
      print("Tebakan Anda terlalu besar!");
    }
  } while (tebakanTebak != angkaRahasiaTebak);
  print("Selamat! Anda berhasil menebak angka rahasia!");

  // Program 10: Mencetak kata dan panjangnya
  List<String> daftarKata = ["Merdeka", "Belajar", "Pemrograman", "Dart"];
  for (String kata in daftarKata) {
    print("$kata - Panjang: ${kata.length}");
  }
}
