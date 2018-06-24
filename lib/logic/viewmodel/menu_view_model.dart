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
          items: ["View Profile", "Profile 2", "Profile 3", "Profile 4"]),
      Menu(
          title: "Shopping",
          icon: Icons.shopping_cart,
          image: UIData.shoppingImage,
          items: [
            "Shopping List",
            "Shopping Details",
            "Product Details",
            "Shopping 4"
          ]),
      Menu(
          title: "Login",
          icon: Icons.send,
          image: UIData.loginImage,
          items: ["Login With OTP", "Login 2", "Sign Up", "Login 4"]),
      Menu(
          title: "Timeline",
          icon: Icons.timeline,
          image: UIData.timelineImage,
          items: ["Feed", "Tweets", "Timeline 3", "Timeline 4"]),
      Menu(
          title: "Dashboard",
          icon: Icons.dashboard,
          image: UIData.dashboardImage,
          items: ["Dashboard 1", "Dashboard 2", "Dashboard 3", "Dashboard 4"]),
      Menu(
          title: "Settings",
          icon: Icons.settings,
          image: UIData.settingsImage,
          items: ["Device Settings", "Settings 2", "Settings 3", "Settings 4"]),
      Menu(
          title: "No Item",
          icon: Icons.not_interested,
          image: UIData.blankImage,
          items: ["No Search Result", "No Internet", "No Item 3", "No Item 4"]),
      Menu(
          title: "Payment",
          icon: Icons.payment,
          image: UIData.paymentImage,
          items: ["Credit Card", "Payment 2", "Payment 3", "Payment 4"]),
    ];
  }
}
