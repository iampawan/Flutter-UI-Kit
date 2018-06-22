import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/home_page.dart';
import 'package:flutter_uikit/ui/page/notfound_page.dart';
import 'package:flutter_uikit/ui/page/profile_one_page.dart';
import 'package:flutter_uikit/ui/page/timeline_one_page.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    theme: ThemeData(primaryColor: Colors.pink),
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
    home: TimelineOnePage(),
    // initialRoute: UIData.notFoundRoute,

    //routes
    routes: <String, WidgetBuilder>{
      UIData.homeRoute: (BuildContext context) => HomePage(),
      UIData.profileOneRoute: (BuildContext context) => ProfileOnePage(),
      UIData.timelineOneRoute: (BuildContext context) => TimelineOnePage(),
      UIData.notFoundRoute: (BuildContext context) => NotFoundPage(
            appTitle: "Search",
            title: "No Result",
            message: "Try a more general keyword.",
            icon: Icons.search,
          ),
    },
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
