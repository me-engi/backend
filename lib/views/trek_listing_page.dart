import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghumeyho/controller/trek_controller.dart';

import 'package:ghumeyho/model/trek_model.dart';
import 'package:ghumeyho/views/trek_detail_page.dart';


class TrekListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TrekController trekController = Get.find(); // Get the TrekController instance

    return Scaffold(
      appBar: AppBar(
        title: Text('Trek Listing'),
      ),
      body: FutureBuilder(
        future: trekController.getTrekList(), // Fetch trek list
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || (snapshot.data as List).isEmpty) {
            return Center(child: Text('No treks available'));
          } else {
            final trekList = snapshot.data as List<TrekModel>; // Replace TrekModel with your model class
            return ListView.builder(
              itemCount: trekList.length,
              itemBuilder: (context, index) {
                final trek = trekList[index];
                return ListTile(
                  title: Text(trek.name),
                  subtitle: Text('Price: \$${trek.price.toStringAsFixed(2)}'),
                  onTap: () {
                    Get.to(() => TrekDetailPage(trekId: trek.id)); // Navigate to trek detail page
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
