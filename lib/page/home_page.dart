import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(child: CustomMenu(title: "Persegi",imageAsset: "assets/persegi.jpg",)),
                  Expanded(child: CustomMenu(title: "Segitiga",imageAsset: "assets/Segitiga.png",)),
                ],
              )),
        Expanded(child: Row(
          children: [
            Expanded(child: CustomMenu(title: "Lingkaran",imageAsset: "assets/lingkaran.png",)),
            Expanded(child: CustomMenu(title: "Belah Ketupat",imageAsset: "assets/belah ketupat.png",)),
          ],
        )),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.green.shade400,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageAsset,height: 100),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
