import 'dart:io';

void main() {
  // Mencetak nama pengguna
  var nama = input('Masukkan nama Anda: ');
  print('Hello, saya "$nama"');
  print('Hello, saya \'$nama\'');

  // Konstanta dan bunga sederhana
  const int pokok = 7; // Konstanta int dengan nilai 7
  var p = double.parse(input('Masukkan pokok pinjaman: '));
  var t = double.parse(input('Masukkan waktu pinjaman (tahun): '));
  var r = double.parse(input('Masukkan suku bunga (%): '));

  var bunga = (p * t * r) / 100;
  print('Bunga sederhana: $bunga');

  // Mencetak persegi angka
  var n = int.parse(input('Masukkan angka: '));
  for (var i = 1; i <= n; i++) {
    for (var j = 1; j <= n; j++) {
      stdout.write('*');
    }
    print('');
  }

  // Mencetak nama lengkap
  var depan = input('Masukkan nama depan: ');
  var belakang = input('Masukkan nama belakang: ');
  print('Nama lengkap: $depan $belakang');

  // Hasil bagi dan sisa
  var a = int.parse(input('Masukkan bilangan pertama: '));
  var b = int.parse(input('Masukkan bilangan kedua: '));

  var hasilBagi = a ~/ b;
  var sisa = a % b;
  print('Hasil bagi: $hasilBagi');
  print('Sisa: $sisa');

  // Menukar dua bilangan
  var temp = a;
  a = b;
  b = temp;

  print('Nilai a setelah ditukar: $a');
  print('Nilai b setelah ditukar: $b');

  // Menghapus spasi dari string
  var str = input('Masukkan string: ');
  var tanpaSpasi = str.replaceAll(' ', '');
  print('String tanpa spasi: $tanpaSpasi');

  // Mengubah string menjadi integer
  var num = int.parse(str);
  print('Nilai integer: $num');

  // Menghitung pembagian tagihan
  var total = double.parse(input('Masukkan total tagihan: '));
  var orang = int.parse(input('Masukkan jumlah orang: '));

  var perOrang = total / orang;
  print('Pembagian per orang: $perOrang');
}

String input(String prompt) {
  print(prompt);
  return stdin.readLineSync() ?? '';
}
