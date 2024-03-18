/*
  Thanks for the opportunity to try out this code challenge! I enjoyed diving into Flutter/Dart for the first time. 
*/

import 'package:flutter/material.dart';
import './views/user/profile.dart';
import './views/social/posts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Challenge'),
        actions: <Widget>[
          //Ideally would hold a user's profile image here, when clicked will take user to profile view. Using stock image for now
          IconButton(
            icon: CircleAvatar(
              backgroundImage: NetworkImage('https://via.placeholder.com/40'), // Placeholder image
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: const PostsListScreen(),
    );
  }
}
