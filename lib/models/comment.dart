class Comment {
  final String id;
  final String userId;
  final String content;
  final int likes;
  final String likesId;
  final DateTime timeStamp;

  Comment({
    required this.id,
    required this.userId,
    required this.content,
    required this.likes,
    required this.likesId,
    required this.timeStamp
  });
}
