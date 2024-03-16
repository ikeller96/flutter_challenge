/*
  This view shows a user all of their information
*/


import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Center(
        child: Text('User Profile Screen', style: Theme.of(context).textTheme.headline4),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}