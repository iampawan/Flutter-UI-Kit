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
      {this.appTitle = "Search",
      this.title = "No Result",
      this.message = "Try a more general keyword.",
      this.icon = Icons.search,
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
