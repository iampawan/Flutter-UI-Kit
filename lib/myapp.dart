import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/home_page.dart';
import 'package:flutter_uikit/ui/page/notfound_page.dart';
import 'package:flutter_uikit/ui/page/profile_one_page.dart';
import 'package:flutter_uikit/ui/page/settings_one_page.dart';
import 'package:flutter_uikit/ui/page/timeline_one_page.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    theme: ThemeData(primaryColor: Colors.pink),
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
    home: SettingsOnePage(),
    // initialRoute: UIData.notFoundRoute,

    //routes
    routes: <String, WidgetBuilder>{
      UIData.homeRoute: (BuildContext context) => HomePage(),
      UIData.profileOneRoute: (BuildContext context) => ProfileOnePage(),
      UIData.timelineOneRoute: (BuildContext context) => TimelineOnePage(),
      UIData.notFoundRoute: (BuildContext context) => NotFoundPage(),
      UIData.settingsOneRoute: (BuildContext context) => SettingsOnePage(),
    },
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
