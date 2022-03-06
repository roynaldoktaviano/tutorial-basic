import 'package:flutter/material.dart';
import 'package:flutter_basic/page/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageHome(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}