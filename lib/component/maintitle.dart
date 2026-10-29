import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techer/const/color.dart';

class Maintitle extends StatelessWidget {
  final double widthscreen;
  final String title;
  const Maintitle({super.key, required this.title, required this.widthscreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Text(
        title,
        style: GoogleFonts.rubik(
          fontSize: widthscreen * .03,
          fontWeight: FontWeight.bold,
          color: gray.withValues(alpha: .7),
        ),
      ),
    );
  }
}
