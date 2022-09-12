import 'package:flutter/material.dart';
import 'dart:math' as math;

class IconTextContainer extends StatelessWidget {
  IconTextContainer({Key? key, required this.icon, required this.text})
      : super(key: key);
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Transform(
      //alignment: Alignment.topRight,
      transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
      child: Container(
        alignment: Alignment.center,
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: Colors.black87, border: Border.all(color: Colors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Container(
              // padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
