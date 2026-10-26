import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techer/const/color.dart';

class Inputform extends StatefulWidget {
  final double widthscreen;
  final IconData icon;
  final bool blind;
  final TextEditingController controller;
  final String text;
  final String? Function(String?)? validator;
  const Inputform({
    super.key,
    required this.text,
    required this.widthscreen,
    required this.icon,
    required this.blind,
    required this.controller,
    required this.validator
  });

  @override
  State<Inputform> createState() => _InputformState();
}

class _InputformState extends State<Inputform> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 6, bottom: 6),
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Text(
              widget.text,
              textDirection: TextDirection.ltr,
              style: GoogleFonts.rubik(
                color: darkgreen,
                fontSize: widget.widthscreen * .03,
              ),
            ),
          ),

          TextFormField(
            controller: widget.controller,
            obscureText: widget.blind,
            cursorColor: darkgreen,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLines: 1,
            textAlign: TextAlign.end,
            decoration: InputDecoration(
              suffixIcon: Icon(widget.icon, color: gray),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: gray, width: 1.2),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: red, width: 1.2),
              ),
              errorMaxLines: 1,
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: red, width: 1.2),
              ),
              fillColor: white,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: gray, width: 1.2),
              ),
            ),
            validator: widget.validator,
          ),
        ],
      ),
    );
  }
}
