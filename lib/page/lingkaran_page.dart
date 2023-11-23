import 'package:bangun_datar_kelas_c/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});

  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            " Lingkaran page",
            style: TextStyle(color: Color(0xFFFFFFFF)),
          ),
          backgroundColor: Colors.green.shade300,
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/lingkaran.png",
              width: 200,
              height: 200,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0), child: Text("Lingkaran")),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Text(
                  "Lingkaran adalah tempat kedudukan titik-titik yang berjarak sama dengan satu titik tertentu."),
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
                      width: 150,
                      child: TextFormField(
                        onChanged: (String value) {
                          _lingkaranController.r = int.parse(value);
                        },

                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi",
                          hintText: "Masukkan Sisi",
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
                              _lingkaranController.hitungKeliling();
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
                              _lingkaranController.hitungLuas();
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
                  Obx(() => Text(_lingkaranController.angka.value,textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.white,
                      fontSize: 75,
                      fontWeight: FontWeight.bold
                  ),)),
                  Obx(() => Text(_lingkaranController.hasil.value, textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.white,
                      fontSize: 16),)),
                ],
              ),
            ),
          ],
        ));
  }
}
