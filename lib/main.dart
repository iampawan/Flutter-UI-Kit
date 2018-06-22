import 'package:flutter/material.dart';
import 'package:flutter_uikit/di/dependency_injection.dart';
import 'package:flutter_uikit/myapp.dart';

void main() {
  Injector.configure(Flavor.MOCK);
  runApp(MyApp());
}
