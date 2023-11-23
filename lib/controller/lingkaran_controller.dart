import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int r = 0;
  final hasil ="".obs;
  final angka="".obs;

  void hitungLuas(){
    double hitung = 22/7 * r * r;
    hasil.value = "Hasil Perhitungan luas dari Lingkaran adalah $hitung";
    angka.value ="$hitung";
  }
  void hitungKeliling(){
    double hitung = 2 * 22/7 * r;
    hasil.value = "Hasil"+
        " Perhitungan Keliling dari Lingkaran adalah $hitung";
    angka.value = "$hitung";
  }
}