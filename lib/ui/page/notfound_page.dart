import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:flutter_uikit/ui/widgets/profile_tile.dart';

class NotFoundPage extends StatelessWidget {
  final appTitle;
  final title;
  final message;
  final IconData icon;
  final String image;

  NotFoundPage(
      {@required this.appTitle,
      @required this.title,
      @required this.message,
      this.icon,
      this.image});

  Widget bodyData() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 100.0,
            ),
            ProfileTile(
              title: title,
              subtitle: message,
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appTitle: appTitle,
      bodyData: bodyData(),
      showFAB: false,
    );
  }
}
