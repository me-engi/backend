import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghumeyho/controller/calender_controller.dart';
 // Import the CalendarController
import 'package:table_calendar/table_calendar.dart';

class BookingCalendarPage extends StatelessWidget {
  final CalendarController _calendarController = Get.find<CalendarController>(); // Get the CalendarController instance

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Booking Date'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              focusedDay: DateTime.now(), // Provide the focusedDay parameter
              firstDay: DateTime.now().subtract(Duration(days: 365)),
              lastDay: DateTime.now().add(Duration(days: 365)),
               // Use the correct property
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final selectedDate = _calendarController.calendarController.selectedDay;
                if (selectedDate != null) {
                  // Handle the selected booking date, e.g., navigate to payment
                  // You can pass the selectedDate to the next screen using Get.to
                  // Example: Get.to(() => PaymentPage(selectedDate: selectedDate));
                } else {
                  // Display an error message if no date is selected
                  Get.snackbar('Error', 'Please select a date');
                }
              },
              child: Text('Continue to Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
