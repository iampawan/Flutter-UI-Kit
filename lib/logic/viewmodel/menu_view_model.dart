import 'package:flutter/material.dart';
import 'package:flutter_uikit/model/menu.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class MenuViewModel {
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
    return menuItems = <Menu>[
      Menu(
          title: "Profile",
          icon: Icons.person,
          image: UIData.profileImage,
          items: ["Profile 1", "Profile 2"]),
      Menu(
          title: "Shopping",
          icon: Icons.shopping_cart,
          image: UIData.shoppingImage,
          items: ["Shopping 1", "Shopping 2"]),
      Menu(
          title: "Login",
          icon: Icons.send,
          image: UIData.loginImage,
          items: ["Login 1", "Login 2"]),
      Menu(
          title: "Timeline",
          icon: Icons.timeline,
          image: UIData.timelineImage,
          items: ["Timeline 1", "Timeline 2"]),
      Menu(
          title: "Dashboard",
          icon: Icons.dashboard,
          image: UIData.dashboardImage,
          items: ["Dashboard 1", "Dashboard 2"]),
      Menu(
          title: "Settings",
          icon: Icons.settings,
          image: UIData.settingsImage,
          items: ["Settings 1", "Settings 2"]),
      Menu(
          title: "No Item",
          icon: Icons.not_interested,
          image: UIData.blankImage,
          items: ["No Item 1", "No Item 2"]),
      Menu(
          title: "Payment",
          icon: Icons.payment,
          image: UIData.paymentImage,
          items: ["Payment 1", "Payment 2"]),
    ];
  }
}
