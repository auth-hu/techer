import 'package:flutter/material.dart';
import 'package:techer/const/color.dart';
import 'package:techer/const/mmunes.dart';
import 'package:techer/phone/veiw/home/487/component/bottommune.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: white,
        bottomNavigationBar: Stack(
            children: [
              Positioned.fill(
                child: IndexedStack(
                  index: homeSelectIndex,
                  children: homePages,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Bottommune(
                  onTap: (index) {
                    setState(() {
                      homeSelectIndex = index;
                    });
                  },
                ),
              ),
            ],
          ),
      ),
    );
  }
}
