import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/profile_tile.dart';
import 'package:random_pk/random_pk.dart';

class ProfileOnePage extends StatelessWidget {
  var deviceSize;

  //Column1
  Widget profileColumn() => Container(
        height: deviceSize.height * 0.24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ProfileTile(
              title: "Pawan Kumar",
              subtitle: "Developer",
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.chat),
                  color: Colors.black,
                  onPressed: () {},
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(50.0)),
                    border: new Border.all(
                      color: Colors.black,
                      width: 4.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars0.githubusercontent.com/u/12619420?s=460&v=4"),
                    foregroundColor: Colors.black,
                    radius: 40.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.call),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      );

  //column2
  Widget followColumn() => Container(
        height: deviceSize.height * 0.13,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ProfileTile(
              title: "1.5 K",
              subtitle: "Posts",
            ),
            ProfileTile(
              title: "25 K",
              subtitle: "Followers",
            ),
            ProfileTile(
              title: "1.2 K",
              subtitle: "Following",
            )
          ],
        ),
      );
  //column3
  Widget descColumn() => Container(
        height: deviceSize.height * 0.13,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              "Google Developer Expert for Flutter. Passionate #Flutter, #Android Developer. #Entrepreneur #YouTuber",
              textAlign: TextAlign.center,
              maxLines: 3,
              softWrap: true,
            ),
          ),
        ),
      );
  //column4
  Widget accountColumn() => Container(
        height: deviceSize.height * 0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ProfileTile(
                  title: "Website",
                  subtitle: "about.me/imthepk",
                ),
                ProfileTile(
                  title: "Phone",
                  subtitle: "+919876543210",
                ),
                ProfileTile(
                  title: "YouTube",
                  subtitle: "youtube.com/mtechviral",
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ProfileTile(
                  title: "Location",
                  subtitle: "New Delhi",
                ),
                ProfileTile(
                  title: "Email",
                  subtitle: "mtechviral@gmail.com",
                ),
                ProfileTile(
                  title: "Facebook",
                  subtitle: "fb.com/imthepk",
                ),
              ],
            ),
          ],
        ),
      );
  Widget divider() => Divider(
        color: Colors.grey.shade800,
        height: 10.0,
      );
  Widget bodyData() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          profileColumn(),
          divider(),
          followColumn(),
          divider(),
          descColumn(),
          divider(),
          accountColumn()
        ],
      ),
    );
  }

  Widget _scaffold() => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("View profile"),
          actions: <Widget>[
            SizedBox(
              width: 5.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ],
        ),
        drawer: Drawer(),
        body: bodyData(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.person_add),
          backgroundColor: Colors.black,
        ),
      );

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return _scaffold();
  }
}
