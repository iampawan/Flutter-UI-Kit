import 'package:flutter_web/foundation.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_uikit/ui/page/dashboard/dashboard_one/dashboard_menu_row.dart';
import 'package:flutter_uikit/ui/widgets/login_background.dart';
import 'package:flutter_uikit/ui/widgets/profile_tile.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class DashboardOnePage extends StatelessWidget {
  Size deviceSize;
  Widget appBarColumn(BuildContext context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 18.0),
          child: new Column(
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new IconButton(
                    icon: new Icon(
                      defaultTargetPlatform == TargetPlatform.android
                          ? Icons.arrow_back
                          : Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.canPop(context)
                        ? Navigator.pop(context)
                        : null,
                  ),
                  new ProfileTile(
                    title: "Hi, Pawan Kumar",
                    subtitle: "Welcome to the Flutter UIKit",
                    textColor: Colors.white,
                  ),
                  new IconButton(
                    icon: new Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print("hi");
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      );

  Widget searchCard() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.search),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Find our product"),
                  ),
                ),
                Icon(Icons.menu),
              ],
            ),
          ),
        ),
      );

  Widget actionMenuCard() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  DashboardMenuRow(
                    firstIcon: Icons.brightness_1,
                    firstLabel: "Friends",
                    firstIconCircleColor: Colors.blue,
                    secondIcon: Icons.brightness_1,
                    secondLabel: "Groups",
                    secondIconCircleColor: Colors.orange,
                    thirdIcon: Icons.brightness_1,
                    thirdLabel: "Nearby",
                    thirdIconCircleColor: Colors.purple,
                    fourthIcon: Icons.brightness_1,
                    fourthLabel: "Moment",
                    fourthIconCircleColor: Colors.indigo,
                  ),
                  DashboardMenuRow(
                    firstIcon: Icons.brightness_1,
                    firstLabel: "Albums",
                    firstIconCircleColor: Colors.red,
                    secondIcon: Icons.brightness_1,
                    secondLabel: "Likes",
                    secondIconCircleColor: Colors.teal,
                    thirdIcon: Icons.brightness_1,
                    thirdLabel: "Articles",
                    thirdIconCircleColor: Colors.lime,
                    fourthIcon: Icons.brightness_1,
                    fourthLabel: "Reviews",
                    fourthIconCircleColor: Colors.amber,
                  ),
                  DashboardMenuRow(
                    firstIcon: Icons.brightness_1,
                    firstLabel: "Sports",
                    firstIconCircleColor: Colors.cyan,
                    secondIcon: Icons.brightness_1,
                    secondLabel: "Fav",
                    secondIconCircleColor: Colors.redAccent,
                    thirdIcon: Icons.brightness_1,
                    thirdLabel: "Blogs",
                    thirdIconCircleColor: Colors.pink,
                    fourthIcon: Icons.brightness_1,
                    fourthLabel: "Wallet",
                    fourthIconCircleColor: Colors.brown,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Widget balanceCard() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Balance",
                      style: TextStyle(fontFamily: UIData.ralewayFont),
                    ),
                    Material(
                      color: Colors.black,
                      shape: StadiumBorder(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "500 Points",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: UIData.ralewayFont),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  "₹ 1000",
                  style: TextStyle(
                      fontFamily: UIData.ralewayFont,
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                      fontSize: 25.0),
                ),
              ],
            ),
          ),
        ),
      );

  Widget allCards(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: <Widget>[
            appBarColumn(context),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            searchCard(),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            actionMenuCard(),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            balanceCard(),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          LoginBackground(
            showIcon: false,
          ),
          allCards(context),
        ],
      ),
    );
  }
}
