import 'package:flutter/material.dart';

class buildButton extends StatelessWidget {
  final String text;
  final String imgicon;
  final Color color;
  final Color brColor;
  final Function onpress;

  const buildButton({
    Key? key,
    required this.text,
    required this.imgicon,
    required this.color,
    required this.onpress,
    required this.brColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onpress();
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: brColor),
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imgicon),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff44444F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
