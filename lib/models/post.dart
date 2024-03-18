/*
  This is a copy of the Post model. In the interest of time I won't fully implement the like, likes and comments models
  but the idea behind storing a likesId and a commentsId is to save space on the post and avoid having to 
  load a long array of objects or strings every time a post is generated on the posts page. Storing the number of likes 
  and comments is enough for at least the post to be generated on the posts page. Then comments can be loaded after a 
  user tries to access the post details. 
*/

class Post {
  final String userId;
  final String name;
  final String username;
  final String content;
  final String timeStamp;
  final int numLikes;
  final String likesId;
  final int numComments;
  final String commentsId;
  final String userProfileImage;

  Post({
    required this.userId,
    required this.name,
    required this.username,
    required this.content,
    required this.timeStamp,
    required this.numLikes,
    required this.likesId,
    required this.numComments,
    required this.commentsId,
    required this.userProfileImage,
  });
}
