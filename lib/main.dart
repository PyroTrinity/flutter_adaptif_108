import 'package:flutter/material.dart';

import 'praktikum2_1_mediaquery.dart';
import 'praktikum2_2_responsive_row_column.dart';
import 'praktikum2_3_layoutbuilder.dart';
import 'praktikum2_4_grid_adaptive.dart';
import 'praktikum2_5_mini_project_responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPraktikum2(),
    );
  }
}

class MenuPraktikum2 extends StatelessWidget {
  const MenuPraktikum2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Praktikum 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _menuButton(
              context,
              'Praktikum 2.1 - MediaQuery',
              const Praktikum21MediaQuery(),
            ),
            _menuButton(
              context,
              'Praktikum 2.2 - Responsif Row & Column',
              const Praktikum22Responsive(),
            ),
            _menuButton(
              context,
              'Praktikum 2.3 - LayoutBuilder',
              const Praktikum23LayoutBuilder(),
            ),
            _menuButton(
              context,
              'Praktikum 2.4 - Grid Adaptif',
              const Praktikum24GridAdaptive(),
            ),
            _menuButton(
              context,
              'Praktikum 2.5 - Mini Project Responsif',
              const Praktikum25MiniProject(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuButton(
    BuildContext context,
    String title,
    Widget page,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },
        child: Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
