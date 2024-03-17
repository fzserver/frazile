import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frazile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          color: Colors.pink,
          titleTextStyle: GoogleFonts.caveat(
            fontSize: 35.0,
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
