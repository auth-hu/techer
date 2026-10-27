
import 'package:flutter/material.dart';
import 'package:techer/const/color.dart';

int homeSelectIndex = 0;

final List<Widget> homePages = [
  Scaffold(backgroundColor: red, body: Center(child: Container(decoration: BoxDecoration(color: red), child: Text("الصفحة الرئيسية")),)),
  Center(child: Text("القوائم"),),
  Center(child: Text("اضافة"),),
  Center(child: Text("الطلاب"),),
  Center(child: Text("الاعدادات"),),
];