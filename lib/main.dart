import 'package:flutter/material.dart';
import 'package:techer/phone/veiw/login/467/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double widthscreen = constraints.minWidth;
        double hightscreen = constraints.minHeight;
        if(widthscreen <= 487){
          return Loginpage487();
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Container(
              width: double.infinity,
              height: hightscreen * .1,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
              ),
              margin: EdgeInsets.all(0),
              child: Text("$widthscreen"),
            )
          ),
        );
      },
    );
  }
}