import 'package:flutter/material.dart';

class Menu {
  String title;
  IconData icon;
  String image;
  List<String> items;
  BuildContext context;

  Menu({this.title, this.icon, this.image, this.items, this.context});
}
