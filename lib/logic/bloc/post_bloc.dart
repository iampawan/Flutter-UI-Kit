import 'dart:async';

import 'package:flutter_uikit/logic/viewmodel/post_view_model.dart';
import 'package:flutter_uikit/model/post.dart';

class PostBloc {
  final PostViewModel postViewModel = PostViewModel();
  final postController = StreamController<List<Post>>();
  Stream<List<Post>> get postItems => postController.stream;

  PostBloc() {
    postController.add(postViewModel.getPosts());
  }
}
