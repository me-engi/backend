import 'package:ghumeyho/model/trek_model.dart';
import 'package:http/http.dart' as http;


class TrekController {
  final String baseUrl = 'https://your-api-url.com'; // Replace with your API URL

  Future<List<TrekModel>> getTrekList() async {
    final response = await http.get(Uri.parse('$baseUrl/treks'));

    if (response.statusCode == 200) {
      final trekListJson = List<Map<String, dynamic>>.from(response.body as Iterable)
          .map((json) => TrekModel.fromJson(json))
          .toList();
      return trekListJson;
    } else {
      throw Exception('Failed to load trek list');
    }
  }

  Future<TrekModel> getTrekDetails(int trekId) async {
    final response = await http.get(Uri.parse('$baseUrl/treks/$trekId'));

    if (response.statusCode == 200) {
      final trekJson = TrekModel.fromJson(response.body as Map<String, dynamic>);
      return trekJson;
    } else {
      throw Exception('Failed to load trek details');
    }
  }
}
