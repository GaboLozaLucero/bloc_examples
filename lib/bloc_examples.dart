import 'package:bloc_practice/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlocExamples extends StatelessWidget {
  const BlocExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menu(),
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
