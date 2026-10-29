import 'package:flutter/material.dart';
import 'package:techer/component/maintitle.dart';
import 'package:techer/const/mmunes.dart';
import 'package:techer/phone/veiw/home/487/component/addshort.dart';
import 'package:techer/phone/veiw/home/487/component/listveiw.dart';

class Shortadd extends StatefulWidget {
  final double widthscreen;
  const Shortadd({super.key, required this.widthscreen});

  @override
  State<Shortadd> createState() => _ShortaddState();
}

class _ShortaddState extends State<Shortadd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          Maintitle(title: ":الأختصارات", widthscreen: widget.widthscreen),
          Addshort(widthscreen: widget.widthscreen, onAdded: () => setState(() {}),),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: mainShortCutList.length,
            itemBuilder: (BuildContext context, int index) {
              final item = mainShortCutList[index];
              return Listveiwshortcut(
                widthscreen: widget.widthscreen,
                title: item['title'] as String,
                addColor: item['addColor'] as Color,
                dotColor: item['dotColor'] as Color,
                icon: item['icon'] as IconData,
                iconColor: item['iconColor'] as Color,
                onTap: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}
