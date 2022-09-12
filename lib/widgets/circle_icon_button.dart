import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  CircleIconButton(
      {Key? key,
      required this.icon,
      this.height = 40,
      this.icon_color = Colors.white,
      this.box_color = Colors.black45})
      : super(key: key);
  IconData icon;
  Color icon_color;
  double height;
  Color box_color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        color: box_color,
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: Icon(
        icon,
        color: icon_color,
        size: height / 2,
      ),
    );
  }
}
