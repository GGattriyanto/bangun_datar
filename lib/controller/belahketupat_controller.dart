import 'package:get/get.dart';

class BelahKetupatController extends GetxController{
  int d1 = 0;
  int d2 = 0;
  final hasil ="".obs;
  final angka="".obs;

  void hitungLuas(){
    double hitung = 1/2 * d1 * d2;
    hasil.value = "Hasil Perhitungan luas dari Belah Ketupat adalah $hitung";
    angka.value ="$hitung";
  }
  void hitungKeliling(){
    int hitung = d1 + d2 + d1 +d2;
    hasil.value = "Hasil"+
        " Perhitungan Keliling dari Belah Ketupat adalah $hitung";
    angka.value = "$hitung";
  }
}