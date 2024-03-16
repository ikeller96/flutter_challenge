import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mock data for demonstration
    const String username = 'Michael Scott';
    const int numberOfPosts = 120;
    const int numberOfFollowers = 250;
    const String email = 'michael.scott@dundermifflin.com';
    const String phoneNumber = '+1234567890';
    const bool isPremiumMember = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Ensure centered cross-axis
          children: <Widget>[
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            const SizedBox(height: 20),
            Text(
              username,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text('Posts: $numberOfPosts | Followers: $numberOfFollowers'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Email: $email'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Phone: $phoneNumber'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Premium Member: ${isPremiumMember ? 'Yes' : 'No'}'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Would need to later implement navigating to users posts screen
                },
                child: const Text('View My Posts'),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
