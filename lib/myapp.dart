import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/home_page.dart';
import 'package:flutter_uikit/ui/page/profile_one_page.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    theme: ThemeData(primaryColor: Colors.pink),
    home: ProfileOnePage(),
    routes: <String, WidgetBuilder>{
      UIData.homeRoute: (BuildContext context) => HomePage(),
      UIData.profileOneRoute: (BuildContext context) => ProfileOnePage(),
    },
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
