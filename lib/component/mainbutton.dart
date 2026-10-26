import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techer/const/bool.dart';
import 'package:techer/const/color.dart';

class Mainbutton extends StatefulWidget {
  final Function() onPressed;
  const Mainbutton({super.key, required this.onPressed});

  @override
  State<Mainbutton> createState() => _MainbuttonState();
}

class _MainbuttonState extends State<Mainbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: loginactivebtn ? secgreen : secgreen.withValues(alpha: .6),
        borderRadius: BorderRadius.circular(16)
      ),
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
      child: MaterialButton(
        enableFeedback: loginactivebtn,
        disabledTextColor: secgreen.withValues(alpha: .2),
        padding: EdgeInsets.all(16),
        onPressed: loginactivebtn ? widget.onPressed : (){},
        child: Row(
          children: [
              Expanded(
                flex: 1,
                child: Icon(Icons.arrow_forward_rounded, color: white, size: 30,)
              ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(right: 8),
                child: Text(
                  "تسجيل الدخول",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.rubik(
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
              )
              ),
          ],
        )
        ),
    );
  }
}