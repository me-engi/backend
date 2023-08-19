// controllers/booking_controller.dart
import 'package:ghumeyho/model/booking_model.dart';
import 'package:http/http.dart' as http;

class BookingController {
  final String baseUrl = 'https://your-api-url.com'; // Replace with your API URL

  // Simulated API call to book a trek
  Future<void> bookTrek(int userId, int trekId, String selectedDate) async {
    final url = Uri.parse('$baseUrl/bookings');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: {
          'userId': userId.toString(),
          'trekId': trekId.toString(),
          'selectedDate': selectedDate,
        },
      );

      if (response.statusCode == 201) {
        print('Booked trek for user $userId on $selectedDate');
      } else {
        throw Exception('Failed to book trek');
      }
    } catch (error) {
      print('Failed to book trek: $error');
      throw Exception('Failed to book trek');
    }
  }
}
