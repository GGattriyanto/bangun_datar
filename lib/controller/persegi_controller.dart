import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil ="".obs;
  final angka="".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan luas dari $sisi adalah $hitung";
    angka.value ="$hitung";
  }
  void hitungKeliling(){
    int hitung = sisi * 4;
    hasil.value = "Hasil"+
         " Perhitungan Keliling dari $sisi adalah $hitung";
    angka.value = "$hitung";
  }
}