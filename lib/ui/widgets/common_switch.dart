import 'package:flutter_web/foundation.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';

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
        : Switch(
      value: defValue,
      onChanged: (val) {},
    );
  }
}
