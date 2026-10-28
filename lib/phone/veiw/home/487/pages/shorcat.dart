import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techer/const/color.dart';
import 'package:techer/phone/veiw/home/487/component/header.dart';
import 'package:techer/phone/veiw/home/487/component/infocart.dart';

class Shorcat extends StatefulWidget {
  const Shorcat({super.key});

  @override
  State<Shorcat> createState() => _ShorcatState();
}

class _ShorcatState extends State<Shorcat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double widthscreen = constraints.maxWidth;
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(widthscreen: widthscreen),
                  Infocart(widthscreen: widthscreen,),
                  ]
                  ),
            ),
          );
        },
      ),
    );
  }
}
