import 'package:flutter/material.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class Menu {
  String title;
  IconData icon;
  String image;

  Menu({this.title, this.icon, this.image});
}

class MenuViewModel {
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
   return menuItems = <Menu>[
      Menu(title: "Profile", icon: Icons.person, image: UIData.profileImage),
      Menu(
          title: "Shopping",
          icon: Icons.shopping_cart,
          image: UIData.shoppingImage),
      Menu(title: "Login", icon: Icons.send, image: UIData.loginImage),
      Menu(
          title: "Timeline", icon: Icons.timeline, image: UIData.timelineImage),
      Menu(
          title: "Dashboard",
          icon: Icons.dashboard,
          image: UIData.dashboardImage),
      Menu(
          title: "Settings", icon: Icons.settings, image: UIData.settingsImage),
      Menu(
          title: "No Item",
          icon: Icons.not_interested,
          image: UIData.blankImage),
      Menu(title: "Payment", icon: Icons.payment, image: UIData.paymentImage),
    ];
  }
}
