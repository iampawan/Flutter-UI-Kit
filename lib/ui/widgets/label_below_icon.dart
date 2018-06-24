import 'package:flutter/material.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class LabelBelowIcon extends StatelessWidget {
  final label;
  final IconData icon;
  final iconColor;
  final onPressed;
  final circleColor;

  LabelBelowIcon(
      {this.label,
      this.icon,
      this.onPressed,
      this.iconColor = Colors.white,
      this.circleColor});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: circleColor,
            radius: 20.0,
            child: Icon(
              icon,
              size: 12.0,
              color: iconColor,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            label,
            style: TextStyle(fontFamily: UIData.ralewayFont),
          )
        ],
      ),
    );
  }
}
