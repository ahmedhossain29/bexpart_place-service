import 'package:bexpat/Bar_page.dart';
import 'package:bexpat/Discover_page.dart';
import 'package:flutter/material.dart';

import '../Coffee_page.dart';
import '../Hotel_page.dart';
import '../Restaurun_page.dart';
import 'buildButton.dart';

class customTapBar extends StatefulWidget {
  customTapBar({
    Key? key,
  }) : super(key: key);

  @override
  State<customTapBar> createState() => _customTapBarState();
}

class _customTapBarState extends State<customTapBar> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 988,
        height: 102,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildButton(
              onpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              imgicon: "assets/Vector1.png",
              text: "Discover",
              color: Color(0xffF5EFFB),
              brColor: Color(0xffF5EFFB),
            ),
            buildButton(
              onpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RestaurunPage()));
              },
              imgicon: "assets/Vector2.png",
              text: "Restaurant",
              color: Color(0xffE9F3FB),
              brColor: isActive == true ? Colors.red : Color(0xffE9F3FB),
            ),
            buildButton(
              onpress: () {
                isActive = !isActive;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bar_Page()));
              },
              imgicon: "assets/Vector3.png",
              text: "Bar",
              color: Color(0xffEDF4E7),
              brColor: isActive == true ? Colors.red : Color(0xffEDF4E7),
            ),
            buildButton(
              onpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Coffee_Page()));
              },
              imgicon: "assets/Vector4.png",
              text: "Coffee",
              color: Color(0xffFAEFE8),
              brColor: Color(0xffFAEFE8),
            ),
            buildButton(
              onpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Hotel_Page()));
              },
              imgicon: "assets/Vector5.png",
              text: "Hotel",
              color: Color(0xffFAEFF6),
              brColor: Color(0xffFAEFF6),
            ),
          ],
        ),
      ),
    );
  }
}
