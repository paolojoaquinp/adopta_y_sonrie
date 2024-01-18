import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class TokenProvider {
  String? _token;
  DateTime? _expiryTime;
  static const _tokenKey = 'token';
  static const _expiryTimeKey = 'expiryTime';

  Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    if (_token == null) {
      _token = prefs.getString(_tokenKey);
      _expiryTime = DateTime.tryParse(prefs.getString(_expiryTimeKey) ?? '');
    }
    if (_token == null || _expiryTime == null || DateTime.now().isAfter(_expiryTime!)) {
      await _refreshToken();
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
      _expiryTime = DateTime.now().add(Duration(seconds: data['expires_in']));
      final prefs = await SharedPreferences.getInstance();
      prefs.setString(_tokenKey, _token!);
      prefs.setString(_expiryTimeKey, _expiryTime!.toIso8601String());
    } else {
      throw Exception('Failed to refresh token');
    }
  }
}