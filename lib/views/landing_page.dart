import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ghumeyho/controller/user_controller.dart';
import 'package:ghumeyho/views/admin_dashboard.dart';

import 'package:ghumeyho/views/trek_listing_page.dart';
import 'package:ghumeyho/views/user_profile_dashboard.dart';// Import the TrekListingPage

class LandingPage extends StatelessWidget {
  final UserController _userController = Get.find<UserController>(); // Get the UserController instance

  @override
  Widget build(BuildContext context) {
    final bool isLoggedIn = _userController.isLoggedIn; // Check if user is logged in
    final bool isAdmin = _userController.isAdmin; // Check if user is admin

    return Scaffold(
      appBar: AppBar(
        title: Text('Your App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to ghumneyho!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            if (isLoggedIn)
              ElevatedButton(
                onPressed: () {
                  // Navigate to the appropriate dashboard based on user role
                  if (isAdmin) {
                    Get.to(() => AdminDashboard());
                  } else {
                    Get.to(() => UserProfileDashboard());
                  }
                },
                child: Text('Go to Dashboard'),
              ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the trek listing page
                Get.to(() => TrekListingPage());
              },
              child: Text('Browse Treks'),
            ),
          ],
        ),
      ),
    );
  }
}




