import 'package:flutter_uikit/model/post.dart';

class PostViewModel {
  List<Post> postItems;

  PostViewModel({this.postItems});

  getPosts() => <Post>[
        Post(
            personName: "Pawan",
            address: "New Delhi, India",
            likesCount: 100,
            commentsCount: 10,
            message:
                "Google Developer Expert for Flutter. Passionate #Flutter, #Android Developer. #Entrepreneur #YouTuber",
            personImage:
                "https://avatars0.githubusercontent.com/u/12619420?s=460&v=4",
            messageImage:
                "https://cdn.pixabay.com/photo/2018/03/09/16/32/woman-3211957_1280.jpg",
            postTime: "Just Now"),
        Post(
            personName: "Amanda",
            address: "Canada",
            likesCount: 123,
            commentsCount: 78,
            messageImage:
                "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
            postTime: "5h ago"),
        Post(
            personName: "Eric",
            address: "California",
            likesCount: 50,
            commentsCount: 5,
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2013/07/18/20/24/brad-pitt-164880_960_720.jpg",
            postTime: "2h ago"),
        Post(
            personName: "Jack",
            address: "California",
            likesCount: 23,
            commentsCount: 4,
            messageImage:
                "https://cdn.pixabay.com/photo/2014/09/07/16/53/hands-437968_960_720.jpg",
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2016/04/01/09/51/actor-1299629_960_720.png",
            postTime: "3h ago"),
        Post(
            personName: "Neha",
            address: "Punjab",
            likesCount: 35,
            commentsCount: 2,
            messageImage:
                "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
            postTime: "1d ago"),
        Post(
            personName: "Pawan",
            address: "New Delhi, India",
            likesCount: 100,
            commentsCount: 10,
            message:
                "Google Developer Expert for Flutter. Passionate #Flutter, #Android Developer. #Entrepreneur #YouTuber",
            personImage:
                "https://avatars0.githubusercontent.com/u/12619420?s=460&v=4",
            messageImage:
                "https://cdn.pixabay.com/photo/2018/03/09/16/32/woman-3211957_1280.jpg",
            postTime: "Just Now"),
        Post(
            personName: "Eric",
            address: "California",
            likesCount: 50,
            commentsCount: 5,
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2013/07/18/20/24/brad-pitt-164880_960_720.jpg",
            postTime: "2h ago"),
        Post(
            personName: "Jack",
            address: "California",
            likesCount: 23,
            commentsCount: 4,
            messageImage:
                "https://cdn.pixabay.com/photo/2014/09/07/16/53/hands-437968_960_720.jpg",
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2016/04/01/09/51/actor-1299629_960_720.png",
            postTime: "3h ago"),
        Post(
            personName: "Amanda",
            address: "Canada",
            likesCount: 123,
            commentsCount: 78,
            messageImage:
                "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
            postTime: "5h ago"),
        Post(
            personName: "Neha",
            address: "Punjab",
            likesCount: 35,
            commentsCount: 2,
            messageImage:
                "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
            postTime: "1d ago"),
      ];
}
