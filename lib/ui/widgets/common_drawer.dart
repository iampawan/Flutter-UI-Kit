import 'package:flutter/material.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class CommonDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Pawan Kumar",
            ),
            accountEmail: Text(
              "mtechviral@gmail.com",
            ),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  "https://avatars0.githubusercontent.com/u/12619420?s=460&v=4"),
            ),
          ),
          new ListTile(
            title: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
          ),
          new ListTile(
            title: Text(
              "Shopping",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
          ),
          new ListTile(
            title: Text(
              "Dashboard",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.dashboard,
              color: Colors.red,
            ),
          ),
          new ListTile(
            title: Text(
              "Timeline",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.timeline,
              color: Colors.cyan,
            ),
          ),
          Divider(),
          new ListTile(
            title: Text(
              "Settings",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.brown,
            ),
          ),
          Divider(),
          AboutListTile(
            applicationIcon: FlutterLogo(
              colors: Colors.yellow,
            ),
            icon: FlutterLogo(
              colors: Colors.yellow,
            ),
            aboutBoxChildren: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Developed By Pawan Kumar",
              ),
              Text(
                "MTechViral",
              ),
            ],
            applicationName: UIData.appName,
            applicationVersion: "1.0.0",
            applicationLegalese: "Apache License 2.0",
          ),
        ],
      ),
    );
  }
}
