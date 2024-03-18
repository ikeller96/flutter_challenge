/*
  post details screen
*/
import 'package:flutter/material.dart';
import '../../models/post.dart';

class PostDetailsScreen extends StatelessWidget {
  final Post post;

  const PostDetailsScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${post.name}'s Post"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(post.userProfileImage),
              ),
              title: Text(post.name),
              subtitle: Text('@${post.username}'),
              trailing: Text(post.timeStamp),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(post.content),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  const Icon(Icons.thumb_up, size: 20.0),
                  const SizedBox(width: 8.0),
                  Text('${post.numLikes} Likes'),
                  const SizedBox(width: 16.0),
                  const Icon(Icons.comment, size: 20.0),
                  const SizedBox(width: 8.0),
                  Text('${post.numComments} Comments'),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text('Comments:', style: Theme.of(context).textTheme.titleMedium),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: post.numComments,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('User${index + 1}'),
                  subtitle: Text('This is comment ${index + 1}.'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
