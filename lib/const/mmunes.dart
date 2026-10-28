
import 'package:flutter/material.dart';
import 'package:techer/phone/veiw/home/487/pages/shorcat.dart';

int homeSelectIndex = 0;

final List<Widget> homePages = [
  Shorcat(),
  Center(child: Text("القوائم"),),
  Center(child: Text("اضافة"),),
  Center(child: Text("الطلاب"),),
  Center(child: Text("الاعدادات"),),
];