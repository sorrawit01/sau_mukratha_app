import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_mukratha_app/views/splash_screen_ui.dart';

void main() {
  runApp(
    MukrathaSAU(),
  );
}

class MukrathaSAU extends StatefulWidget {
  const MukrathaSAU({super.key});

  @override
  State<MukrathaSAU> createState() => _MukrathaSAUState();
}

class _MukrathaSAUState extends State<MukrathaSAU> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
