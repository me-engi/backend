import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghumeyho/controller/trek_controller.dart';
// Import the TrekController

class AdminDashboard extends StatelessWidget {
  final TrekController _trekController = Get.find<TrekController>(); // Get the TrekController instance

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, Admin!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement the logic to add a new trek
                // Example: Get.to(() => AddTrekPage());
              },
              child: Text('Add New Trek'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement the logic to view all treks
                // Example: Get.to(() => AllTreksPage());
              },
              child: Text('View All Treks'),
            ),
          ],
        ),
      ),
    );
  }
}
