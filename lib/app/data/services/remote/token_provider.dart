import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class TokenProvider {
  String? _token;
  static const _tokenKey = 'token';

  Future<String> getToken() async {
    if (_token == null) {
      final prefs = await SharedPreferences.getInstance();
      _token = prefs.getString(_tokenKey);
      if (_token == null || _token!.isEmpty) {
        await _refreshToken();
      }
    }
    return _token!;
  }

  Future<void> _refreshToken() async {
    final response = await http.post(
      Uri.parse('https://api.petfinder.com/v2/oauth2/token'),
      body: {
        'grant_type': 'client_credentials',
        'client_id': dotenv.env['CLIENT_ID']!,
        'client_secret': dotenv.env['CLIENT_SECRET']!,
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      _token = data['access_token'];
      final prefs = await SharedPreferences.getInstance();
      prefs.setString(_tokenKey, '');
      prefs.setString(_tokenKey, _token!);
    } else {
      throw Exception('Failed to refresh token');
    }
  }
}