import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CommonSwitch extends StatelessWidget {
  final defValue;
  CommonSwitch({this.defValue = false});
  @override
  Widget build(BuildContext context) {
    return defaultTargetPlatform == TargetPlatform.android
        ? Switch(
            value: defValue,
            onChanged: (val) {},
          )
        : CupertinoSwitch(
            value: defValue,
            onChanged: (val) {},
          );
  }
}
