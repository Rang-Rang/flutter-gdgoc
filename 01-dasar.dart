import 'dart:io';

void main() {
  String? inputNama;
  int? inputUmur;

  try {
    print("Input nama:");
    inputNama = stdin.readLineSync();
    if (inputNama == null || inputNama.isEmpty) {
      throw Exception("Nama tidak boleh kosong!");
    }

    print("Input umur:");
    inputUmur = int.parse(stdin.readLineSync()!);
    if (inputUmur <= 0) {
      throw Exception("Umur harus lebih besar dari 0!");
    }
  } catch (e) {
    print("Terdeteksi error: '$e'");
  } finally {
    String asep = datadiri(nama: 'Asep');
    print(asep);

    if (inputNama != null && inputUmur != null) {
      String inputUser = datadiri(nama: inputNama, umur: inputUmur);
      print(inputUser);
    } else {
      print("Tidak ada nama yang dimasukkan.");
    }
  }
}

String datadiri({
  required String nama,
  int umur = 18,
}) {
  String isi;

  if (umur < 12) {
    isi =
        "Hai, nama saya $nama. Saya masih anak-anak dan berusia $umur tahun. Saya suka bermain dan belajar hal-hal baru!";
  } else if (umur < 18) {
    isi =
        "Halo, nama saya $nama. Saya seorang remaja berusia $umur tahun. Saya sedang sibuk belajar di sekolah.";
  } else if (umur < 30) {
    isi =
        "Hai, nama saya $nama. Saya berusia $umur tahun. Saat ini, saya sedang membangun karier dan mengejar impian saya.";
  } else if (umur < 60) {
    isi =
        "Halo, nama saya $nama. Saya berusia $umur tahun. Saya menikmati waktu bersama keluarga dan bekerja keras setiap hari.";
  } else {
    isi =
        "Hai, nama saya $nama. Saya berusia $umur tahun. Saya menikmati masa pensiun dan berbagi pengalaman hidup saya.";
  }

  return isi;
}
