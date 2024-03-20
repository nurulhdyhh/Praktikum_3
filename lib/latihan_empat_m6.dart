// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Satu sehat',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Satu sehat peduli lindungi'),
        ),
        body: Column(
          children: [
            const ContainerWithBlueBackground(),
            const ContainerWithWhiteBackground(),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  features.length,
                  (index) => FeatureItem(feature: features[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Feature {
  final String name;
  final String imagePath;

  Feature({required this.name, required this.imagePath});
}

final List<Feature> features = [
  Feature(name: 'COVID-19 Vaccine', imagePath: 'images/4.jpeg'),
  Feature(name: 'Covid-19 Test Result', imagePath: 'images/2.jpeg'),
  Feature(name: 'EHAC', imagePath: 'images/5.jpeg'),
  Feature(name: 'TeleDok', imagePath: 'images/teledok.jpeg'),
  Feature(name: 'Pesan Kamar', imagePath: 'images/3.jpeg'),
  Feature(name: 'Reminder', imagePath: 'images/1.jpeg'),
];

class ContainerWithBlueBackground extends StatelessWidget {
  const ContainerWithBlueBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Entering a public space?',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Stay alert to stay safe',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),
            Image.asset(
              'images/scan.png',
              width: 100,
              height: 100,
            ),
            const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerWithWhiteBackground extends StatelessWidget {
  const ContainerWithWhiteBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: -1,
            blurRadius: 0.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              // Tambahkan fungsi untuk menampilkan menu check-in
            },
            icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Check-In Preference',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              // Tambahkan fungsi untuk melakukan check-in
            },
            icon: const Icon(Icons.qr_code, color: Colors.blue),
            label: const Text(
              'Check-in',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 238, 248, 255),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final Feature feature;

  const FeatureItem({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            feature.imagePath,
            width: 70,
            height: 70,
          ),
          SizedBox(height: 8),
          Text(
            feature.name,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
