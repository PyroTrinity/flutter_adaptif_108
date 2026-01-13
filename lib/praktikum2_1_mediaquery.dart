import 'package:flutter/material.dart';

class Praktikum21MediaQuery extends StatelessWidget {
  const Praktikum21MediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 2.1 - MediaQuery'),
      ),
      body: Center(
        child: Text(
          'Lebar layar: ${width.toInt()} px',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
