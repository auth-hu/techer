import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techer/const/color.dart';

class Header extends StatefulWidget {
  final double widthscreen;
  const Header({super.key, required this.widthscreen});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      width: double.infinity,
      alignment: Alignment.centerRight,
      height: 90,
      decoration: BoxDecoration(
        color: secgreen,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: lightgreen,
            offset: Offset(1, 1),
            blurRadius: 2,
            spreadRadius: 2
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "الثلاثاء   10/27/2026",
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold,
                      color: white,
                      fontSize: widget.widthscreen * .04
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "5 :عدد المحاضرات",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold,
                      color: white,
                      fontSize: widget.widthscreen * .03
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Container(
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: Icon(Icons.person, size: 45, color: white,),
          ),
        ],
      ),
    );
  }
}