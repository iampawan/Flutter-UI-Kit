import 'package:flutter/material.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class ProfileTile extends StatelessWidget {
  final title;
  final subtitle;
  ProfileTile({this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
