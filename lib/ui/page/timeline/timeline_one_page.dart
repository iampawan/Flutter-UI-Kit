import 'package:flutter/material.dart';
import 'package:flutter_uikit/logic/bloc/post_bloc.dart';
import 'package:flutter_uikit/model/post.dart';
import 'package:flutter_uikit/ui/widgets/common_divider.dart';
import 'package:flutter_uikit/ui/widgets/common_drawer.dart';
import 'package:flutter_uikit/ui/widgets/label_icon.dart';
import 'package:flutter_uikit/utils/uidata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TimelineOnePage extends StatelessWidget {
  //column1
  Widget profileColumn(BuildContext context, Post post) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(post.personImage),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  post.personName,
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .apply(fontWeightDelta: 700),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  post.address,
                  style: Theme.of(context).textTheme.caption.apply(
                      fontFamily: UIData.ralewayFont, color: Colors.pink),
                )
              ],
            ),
          ))
        ],
      );

  //column last
  Widget actionColumn(Post post) => FittedBox(
        fit: BoxFit.contain,
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            LabelIcon(
              label: "${post.likesCount} Likes",
              icon: FontAwesomeIcons.solidThumbsUp,
              iconColor: Colors.green,
            ),
            LabelIcon(
              label: "${post.commentsCount} Comments",
              icon: FontAwesomeIcons.comment,
              iconColor: Colors.blue,
            ),
            Text(
              post.postTime,
              style: TextStyle(fontFamily: UIData.ralewayFont),
            )
          ],
        ),
      );

  //post cards
  Widget postCard(BuildContext context, Post post) {
    return Card(
      elevation: 2.0,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: profileColumn(context, post),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              post.message,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: UIData.ralewayFont),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          post.messageImage != null
              ? Image.network(
                  post.messageImage,
                  fit: BoxFit.cover,
                )
              : Container(),
          post.messageImage != null ? Container() : CommonDivider(),
          actionColumn(post),
        ],
      ),
    );
  }

  //allposts dropdown
  Widget bottomBar() => PreferredSize(
      preferredSize: Size(double.infinity, 50.0),
      child: Container(
          color: Colors.black,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "All Posts",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          )));

  Widget appBar() => SliverAppBar(
        backgroundColor: Colors.black,
        elevation: 2.0,
        title: Text("Feed"),
        forceElevated: true,
        pinned: true,
        floating: true,
        bottom: bottomBar(),
      );

  Widget bodyList(List<Post> posts) => SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: postCard(context, posts[index]),
          );
        }, childCount: posts.length),
      );

  Widget bodySliverList() {
    PostBloc postBloc = PostBloc();
    return StreamBuilder<List<Post>>(
        stream: postBloc.postItems,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? CustomScrollView(
                  slivers: <Widget>[
                    appBar(),
                    bodyList(snapshot.data),
                  ],
                )
              : Center(child: CircularProgressIndicator());
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CommonDrawer(),
      body: bodySliverList(),
    );
  }
}
