import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  int sisi = 0;
  int tinggi = 0;
  final hasil ="".obs;
  final angka="".obs;

  void hitungLuas(){
    double hitung = (1/2 * alas * tinggi) ;
    hasil.value = "Hasil Perhitungan luas dari Segitiga adalah $hitung";
    angka.value ="$hitung";
  }
  void hitungKeliling(){
    int hitung = alas + sisi + tinggi;
    hasil.value = "Hasil"+
        " Perhitungan Keliling dari Segitiga adalah $hitung";
    angka.value = "$hitung";
  }
}