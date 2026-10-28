import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techer/const/color.dart';

class Cardhome extends StatefulWidget {
  final double widthscreen;
  final double borderWight;
  final Color mainColor;
  final Color borderColor;
  final Color iconColor;
  final Color titleColor;
  final Color subTitleColor;
  final IconData icon;
  final String title;
  final String subTitle;
  final Function()? onTap;
  const Cardhome({super.key,required this.titleColor, required this.subTitleColor, required this.title, required this.subTitle, required this.iconColor, required this.icon, required this.borderWight, required this.widthscreen, required this.onTap, required this.mainColor, required this.borderColor});

  @override
  State<Cardhome> createState() => _CardhomeState();
}

class _CardhomeState extends State<Cardhome> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: red.withValues(alpha: 0),
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.centerRight,
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: widget.mainColor,
          border: Border.all(color: widget.borderColor, width: widget.borderWight),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 8, bottom: 4, right: 12),
              child: Icon(
                widget.icon,
                color: widget.iconColor,
                weight: 15,
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              child: Text(
                widget.title,
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.bold,
                  color: widget.titleColor,
                  fontSize: widget.widthscreen * 0.04,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 12, bottom: 8),
              child: Text(
                widget.subTitle,
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w500,
                  color: widget.subTitleColor,
                  fontSize: widget.widthscreen * 0.03,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
