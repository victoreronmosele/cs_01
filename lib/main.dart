import 'package:cyberspace_test/ui/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberSpace Test',
      theme: ThemeData(
          primaryColor: Color(0xff613EEA),
          accentColor: Color(0xffFF7D00),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.sarabunTextTheme(Theme.of(context).textTheme)),
      home: LandingPage(),
    );
  }
}
