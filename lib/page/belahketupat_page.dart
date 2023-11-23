import 'package:bangun_datar_kelas_c/controller/belahketupat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BelahketupatPage extends StatelessWidget {
  BelahketupatPage({super.key});

  final BelahKetupatController _belahKetupatController = Get.put(BelahKetupatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            " Belah Ketupat page",
            style: TextStyle(color: Color(0xFFFFFFFF)),
          ),
          backgroundColor: Colors.green.shade300,
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/belah ketupat.png",
              width: 200,
              height: 200,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0), child: Text("Belah Ketupat")),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Text(
                  "Belah ketupat adalah bangun datar dua dimensi yang dibentuk oleh empat buah segitiga siku siku masing-masing sama besar dengan sudut di hadapannya"),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: TextFormField(
                        onChanged: (String value) {
                          _belahKetupatController.d1 = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Diagonal 1",
                          hintText: "Masukkan diagonal",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: TextFormField(
                        onChanged: (String value) {
                          _belahKetupatController.d2 = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Diagonal 2",
                          hintText: "Masukkan  diagonal",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),

                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.black38),
                            onPressed: () {
                              _belahKetupatController.hitungKeliling();
                            },
                            child: Text(
                              "Hitung Keliling",
                              style: TextStyle(color: Color(0xFFFFFFFF)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.yellow),
                            onPressed: () {
                              _belahKetupatController.hitungLuas();
                            },
                            child: Text(
                              "Hitung Luas",
                              style: TextStyle(color: Color(0xFFFFFFFF)),
                            )),
                      )
                    ],
                  ),


                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              width: 1000000,
              height: 200,
              child: Column(
                children: [
                  Text("Hasil :",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  )),
                  Obx(() => Text(_belahKetupatController.angka.value,textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.white,
                      fontSize: 75,
                      fontWeight: FontWeight.bold
                  ),)),
                  Obx(() => Text(_belahKetupatController.hasil.value, textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.white,
                      fontSize: 16),)),
                ],
              ),
            ),


          ],
        ));
  }
}
