import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/menu_bloc.dart';
import 'package:flutter_uikit/model/menu.dart';
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

  Widget bodyList() {
    MenuBloc menuBloc = MenuBloc();
    return StreamBuilder<List<Menu>>(
      stream: menuBloc.menuItems,
      builder: (context, snapshot) => snapshot.hasData
          ? Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                children: snapshot.data
                    .map((Menu menu) => menuStack(context, menu))
                    .toList(),
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  Widget homeScaffold(BuildContext context) => Theme(
        data: Theme.of(context).copyWith(
              canvasColor: Colors.transparent,
            ),
        child: Scaffold(
            key: _scaffoldState,
            appBar: AppBar(
              title: Text(UIData.appName),
              backgroundColor: Colors.black,
            ),
            body: bodyList()),
      );

  void _showModalBottomSheet(BuildContext context, Menu menu) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Material(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.only(
                      topLeft: new Radius.circular(12.0),
                      topRight: new Radius.circular(12.0))),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: menu.items.length,
                itemBuilder: (context, i) => new ListTile(
                      leading: Icon(
                        menu.icon,
                        color: Colors.black,
                      ),
                      title: Text(
                        menu.items[i],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return homeScaffold(context);
  }
}
