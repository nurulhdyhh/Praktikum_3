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
        body: const Center(
          child: ContainerWithShadow(),
        ),
      ),
    );
  }
}

class ContainerWithShadow extends StatelessWidget {
  const ContainerWithShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 2000,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 2000,
              height: 120,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
