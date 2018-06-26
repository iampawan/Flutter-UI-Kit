import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_uikit/di/dependency_injection.dart';
import 'package:flutter_uikit/myapp.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // MaterialPageRoute.debugEnableFadingRoutes = true;
  Injector.configure(Flavor.MOCK);
  runApp(MyApp());
}
