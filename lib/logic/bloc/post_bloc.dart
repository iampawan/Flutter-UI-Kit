import 'dart:async';

import 'package:flutter_uikit/logic/viewmodel/post_view_model.dart';
import 'package:flutter_uikit/model/post.dart';

class PostBloc {
  final PostViewModel postViewModel = PostViewModel();
  final postController = StreamController<List<Post>>();
  final fabController = StreamController<bool>();
  final fabVisibleController = StreamController<bool>();
  Sink<bool> get fabSink => fabController.sink;
  Stream<List<Post>> get postItems => postController.stream;
  Stream<bool> get fabVisible => fabVisibleController.stream;

  PostBloc() {
    postController.add(postViewModel.getPosts());
    fabController.stream.listen(onScroll);
  }
  onScroll(bool visible) {
    fabVisibleController.add(visible);
  }

  void dispose() {
    postController?.close();
    fabController?.close();
    fabVisibleController?.close();
  }
}
