import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/home_page.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    theme: ThemeData(primaryColor: Colors.pink),
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      UIData.homeRoute: (BuildContext context) => HomePage(),
    },
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
