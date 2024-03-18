/*
  This view shows the posts of the people that the user follows
*/

import 'package:flutter/material.dart';
import '../../data/mock_posts.dart';
import 'post_details.dart';

class PostsListScreen extends StatelessWidget {
  const PostsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mockPosts.length,
      itemBuilder: (BuildContext context, int index) {
        final post = mockPosts[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(post.userProfileImage),
                  ),
                  title: Text(post.name),
                  subtitle: Text(post.username),
                  trailing: Text(post.timeStamp),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostDetailsScreen(post: post),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(post.content),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Icon(Icons.thumb_up, size: 16.0),
                      const SizedBox(width: 8.0),
                      Text('${post.numLikes} Likes'),
                      const SizedBox(width: 16.0),
                      const Icon(Icons.comment, size: 16.0),
                      const SizedBox(width: 8.0),
                      Text('${post.numComments} Comments'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
