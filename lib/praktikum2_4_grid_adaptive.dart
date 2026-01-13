import 'package:flutter/material.dart';

class Praktikum24GridAdaptive extends StatelessWidget {
  const Praktikum24GridAdaptive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 2.4 - Grid Adaptif'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: List.generate(
          8,
          (index) => Card(
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
