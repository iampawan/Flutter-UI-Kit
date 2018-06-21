import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/menu_bloc.dart';
import 'package:flutter_uikit/logic/viewmodel/menu_view_model.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class HomePage extends StatelessWidget {
  //menuStack
  Widget menuStack(Menu menu) => InkWell(
        onTap: () {},
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
            style: TextStyle(color: Colors.white),
          )
        ],
      );

  Widget bodyList() {
    MenuBloc menuBloc = MenuBloc();
    return StreamBuilder<List<Menu>>(
      stream: menuBloc.menuItems,
      builder: (context, snapshot) => snapshot.hasData
          ? GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              children:
                  snapshot.data.map((Menu menu) => menuStack(menu)).toList(),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  Widget homeScaffold() => Scaffold(
      appBar: AppBar(
        title: Text(UIData.appName),
        backgroundColor: Colors.black,
      ),
      body: bodyList());

  @override
  Widget build(BuildContext context) {
    return homeScaffold();
  }
}
