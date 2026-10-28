import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techer/const/color.dart';
import 'package:techer/phone/veiw/home/487/component/cardhome.dart';
import 'package:techer/phone/veiw/home/487/component/cardhomesec.dart';

class Infocart extends StatefulWidget {
  final double widthscreen;
  const Infocart({super.key, required this.widthscreen});

  @override
  State<Infocart> createState() => _InfocartState();
}

class _InfocartState extends State<Infocart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Text(
              ":قسم الطلاب",
              style: GoogleFonts.rubik(
                fontSize: widget.widthscreen * .03,
                fontWeight: FontWeight.bold,
                color: gray.withValues(alpha: .7)
                ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Cardhome(
                      titleColor: secred,
                      subTitleColor: secred,
                      title: "الغياب",
                      subTitle: "12",
                      iconColor: secred,
                      icon: Icons.person_off_rounded,
                      borderWight: .6,
                      widthscreen: widget.widthscreen,
                      onTap: () {},
                      mainColor: red.withValues(alpha: .2),
                      borderColor: red,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Cardhome(
                      titleColor: darkgreen,
                      subTitleColor: darkgreen,
                      title: "عدد الطلاب",
                      subTitle: "48",
                      iconColor: darkgreen,
                      icon: Icons.person,
                      borderWight: .6,
                      widthscreen: widget.widthscreen,
                      onTap: () {},
                      mainColor: icegreen,
                      borderColor: secgreen,
                    ),
                  ],
                ),
              ),
            ],
          ),

          Column(
            children: [
              Cardhomesec(
                icon: Icons.person_add,
                iconColor: gold,
                titleColor: gray,
                subTitleColor: gray,
                title: "المجازين",
                subTitle: "2",
                borderWight: .6,
                widthscreen: widget.widthscreen,
                onTap: () {},
                mainColor: gold.withValues(alpha: .15),
                borderColor: gold,
              ),

              Cardhomesec(
                icon: Icons.person_outline,
                iconColor: secgreen,
                titleColor: secgreen,
                subTitleColor: secgreen,
                title: "الحضور",
                subTitle: "34",
                borderWight: .6,
                widthscreen: widget.widthscreen,
                onTap: () {},
                mainColor: secgreen.withValues(alpha: .15),
                borderColor: secgreen,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
