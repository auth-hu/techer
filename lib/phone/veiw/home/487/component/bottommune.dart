import 'package:flutter/material.dart';
import 'package:techer/const/color.dart';
import 'package:techer/const/mmunes.dart';

class Bottommune extends StatefulWidget {
  final dynamic Function(int)? onTap;
  const Bottommune({super.key, required this.onTap});

  @override
  State<Bottommune> createState() => _BottommuneState();
}

class _BottommuneState extends State<Bottommune> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(100),
        border: Border.all(color: gray, width: 2.4,)
      ),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(100),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: secgreen,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: gray,
          iconSize: 25,
          onTap: widget.onTap,
          backgroundColor: white,
          currentIndex: homeSelectIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.add,), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ],
        ),
      ),
    );
  }
}
