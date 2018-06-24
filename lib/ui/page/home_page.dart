import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/menu_bloc.dart';
import 'package:flutter_uikit/model/menu.dart';
import 'package:flutter_uikit/ui/widgets/about_tile.dart';
import 'package:flutter_uikit/ui/widgets/profile_tile.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class HomePage extends StatelessWidget {
  final _scaffoldState = GlobalKey<ScaffoldState>();
  //menuStack
  Widget menuStack(BuildContext context, Menu menu) => InkWell(
        onTap: () => _showModalBottomSheet(context, menu),
        splashColor: Colors.orange,
        child: Card(
          elevation: 5.0,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              menuImage(menu),
              menuColor(),
              menuData(menu),
            ],
          ),
        ),
      );

  //stack 1/3
  Widget menuImage(Menu menu) => AspectRatio(
        aspectRatio: 1.0,
        child: Image.asset(
          menu.image,
          fit: BoxFit.cover,
        ),
      );

  //stack 2/3
  Widget menuColor() => new Container(
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            blurRadius: 5.0,
          ),
        ]),
      );

  //stack 3/3
  Widget menuData(Menu menu) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            menu.icon,
            color: Colors.white,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            menu.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      );

  //appbar
  Widget appBar() => SliverAppBar(
        backgroundColor: Colors.black,
        pinned: true,
        elevation: 10.0,
        forceElevated: true,
        expandedHeight: 150.0,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: false,
          background: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: UIData.kitGradients)),
          ),
          title: Row(
            children: <Widget>[
              FlutterLogo(
                colors: Colors.yellow,
                textColor: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(UIData.appName)
            ],
          ),
        ),
      );

  //bodygrid
  Widget bodyGrid(List<Menu> menu) => SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
          childAspectRatio: 1.0,
        ),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return menuStack(context, menu[index]);
        }, childCount: menu.length),
      );

  Widget homeScaffold(BuildContext context) => Theme(
        data: Theme.of(context).copyWith(
              canvasColor: Colors.transparent,
            ),
        child: Scaffold(key: _scaffoldState, body: bodySliverList()),
      );

  Widget bodySliverList() {
    MenuBloc menuBloc = MenuBloc();
    return StreamBuilder<List<Menu>>(
        stream: menuBloc.menuItems,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? CustomScrollView(
                  slivers: <Widget>[
                    appBar(),
                    bodyGrid(snapshot.data),
                  ],
                )
              : Center(child: CircularProgressIndicator());
        });
  }

  Widget header() => Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: UIData.kitGradients2)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    "https://avatars0.githubusercontent.com/u/12619420?s=460&v=4"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProfileTile(
                  title: "Pawan Kumar",
                  subtitle: "mtechviral@gmail.com",
                  textColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      );

  void _showModalBottomSheet(BuildContext context, Menu menu) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Material(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.only(
                    topLeft: new Radius.circular(20.0),
                    topRight: new Radius.circular(20.0))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                header(),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: false,
                    itemCount: menu.items.length,
                    itemBuilder: (context, i) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: ListTile(
                              title: Text(
                                menu.items[i],
                              ),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(
                                    context, "/${menu.items[i]}");
                              }),
                        ),
                  ),
                ),
                MyAboutTile()
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return homeScaffold(context);
  }
}
