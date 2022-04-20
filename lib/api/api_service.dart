import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/tourism_place.dart';

class ApiService {
  Future<TourismResult> topHeadlines() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.5/bab4v2/backend/api.php'));
    if (response.statusCode == 200) {
      return TourismResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}
