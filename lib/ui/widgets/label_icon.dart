import 'package:flutter/material.dart';

class LabelIcon extends StatelessWidget {
  final label;
  final icon;
  final iconColor;
  final onPressed;

  LabelIcon(
      {this.label, this.icon, this.onPressed, this.iconColor = Colors.grey});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed,
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: iconColor,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
