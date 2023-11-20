import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_responsi/layar/halaman_utama.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Latihan Responsi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //font
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: HalamanUtama(),
    );
  }
}