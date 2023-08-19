import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghumeyho/controller/user_controller.dart';
import 'package:ghumeyho/model/user_model.dart';

class UserProfileDashboard extends StatelessWidget {
  final UserController _userController = Get.find<UserController>(); // Get the UserController instance

  @override
  Widget build(BuildContext context) {
    final UserModel? user = _userController.loggedInUser; // Get the logged-in user from UserController

    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, ${user?.username}!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Email: ${user?.email}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement the logic to edit the user profile
                // Example: Get.to(() => EditUserProfilePage());
              },
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement the logic to log out the user
                _userController.logout();
                Get.offAllNamed('/'); // Navigate to the landing page
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
