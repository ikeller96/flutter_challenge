import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for user
    const String username = 'Michael Scott';
    const int numberOfPosts = 120;
    const int numberOfFollowers = 250;
    const String email = 'michael.scott@dundermifflin.com';
    const String phoneNumber = '+1234567890';
    const bool isPremiumMember = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Placeholder for edit functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              const Text('Posts: $numberOfPosts | Followers: $numberOfFollowers'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Email: $email'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Phone: $phoneNumber'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Premium Member: ${isPremiumMember ? 'Yes' : 'No'}'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Placeholder for navigating to the user's posts screen
                  },
                  child: const Text('View My Posts'),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
