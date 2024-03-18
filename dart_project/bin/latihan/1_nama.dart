import 'dart:io';

void main() {
  var nama = input('Masukkan nama Anda: ');
  print('Hello, saya "$nama"');
  print('Hello, saya \'$nama\'');
}

String input(String prompt) {
  print(prompt);
  return stdin.readLineSync() ?? ''
;  
}
