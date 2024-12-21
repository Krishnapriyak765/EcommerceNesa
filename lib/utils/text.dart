import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texts extends StatelessWidget {
  final String text;
  final double fonstsize;
  final FontWeight fontWeight;
  final Color color;

  const Texts(
      {super.key,
      required this.text,
      required this.fonstsize,
      required this.fontWeight,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        color: color,
        fontSize: fonstsize,
        fontWeight: fontWeight,
      ),
    );
  }
}
