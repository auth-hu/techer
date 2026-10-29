import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techer/const/color.dart';

class Listveiwshortcut extends StatefulWidget {
  final double widthscreen;
  final String title;
  final Color addColor;
  final Color dotColor;
  final IconData icon;
  final Color iconColor;
  final Function onTap;
  const Listveiwshortcut({super.key, required this.widthscreen, required this.title, required this.addColor, required this.dotColor, required this.icon, required this.iconColor, required this.onTap});

  @override
  State<Listveiwshortcut> createState() => _ListveiwshortcutState();
}

class _ListveiwshortcutState extends State<Listveiwshortcut> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: gray.withValues(alpha: 0),
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: gray.withValues(alpha: .3), width: 2),
        ),
        child: Container(
          margin: EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.centerRight,
                  child: Text(
                    widget.title,
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold,
                      fontSize: widget.widthscreen * 0.035,
                      color: gray.withValues(alpha: .7),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: widget.addColor,
                  ),
                  child: DottedBorder(
                    options: RoundedRectDottedBorderOptions(
                      radius: Radius.circular(12),
                      color: widget.dotColor,
                      strokeWidth: 2,
                      dashPattern: [10, 8],
                    ),
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                      child: Icon(
                        widget.icon,
                        color: widget.iconColor,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
