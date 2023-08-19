import 'package:ghumeyho/model/notification_model.dart';
import 'package:http/http.dart' as http;


class NotificationController {
  final String baseUrl = 'https://your-api-url.com'; // Replace with your API URL

  // Simulated API call to fetch notifications
  Future<List<NotificationModel>> getNotifications(int userId) async {
    final response = await http.get(Uri.parse('$baseUrl/notifications?userId=$userId'));

    if (response.statusCode == 200) {
      final notificationListJson = List<Map<String, dynamic>>.from(response.body as Iterable)
          .map((json) => NotificationModel.fromJson(json))
          .toList();
      return notificationListJson;
    } else {
      throw Exception('Failed to load notifications');
    }
  }
}
