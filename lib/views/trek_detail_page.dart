import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghumeyho/controller/trek_controller.dart';
import 'package:ghumeyho/model/trek_model.dart';


class TrekDetailPage extends StatelessWidget {
  final int trekId;

  TrekDetailPage({required this.trekId});

  @override
  Widget build(BuildContext context) {
    final TrekController trekController = Get.find(); // Get the TrekController instance

    return Scaffold(
      appBar: AppBar(
        title: Text('Trek Details'),
      ),
      body: FutureBuilder(
        future: trekController.getTrekDetails(trekId), // Fetch trek details
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data available'));
          } else {
            final trek = snapshot.data as TrekModel; // Replace TrekModel with your model class
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trek.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(trek.description),
                  SizedBox(height: 20),
                  Text('Price: \$${trek.price.toStringAsFixed(2)}'),
                  SizedBox(height: 20),
                  Text('Itinerary:'),
                  Text(trek.itinerary),
                  SizedBox(height: 20),
                  Text('Inclusions:'),
                  Column(
                    children: trek.inclusions.map((item) => Text('- $item')).toList(),
                  ),
                  SizedBox(height: 20),
                  Text('Exclusions:'),
                  Column(
                    children: trek.exclusions.map((item) => Text('- $item')).toList(),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
