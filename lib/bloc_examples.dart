import 'package:bloc_practice/menu.dart';
import 'package:flutter/material.dart';

class BlocExamples extends StatelessWidget {
  const BlocExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menu(),
    );
  }
}
