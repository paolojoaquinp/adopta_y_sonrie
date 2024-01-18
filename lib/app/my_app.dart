import 'package:adopta_y_sonrie/app/presentation/layout/layout_view.dart';
import 'package:adopta_y_sonrie/app/presentation/modules/auth/login/register/view/register_view.dart';
import 'package:adopta_y_sonrie/app/presentation/modules/auth/login/view/login_view.dart';
import 'package:adopta_y_sonrie/app/presentation/modules/filter_location/view/location_view.dart';
import 'package:flutter/material.dart';
import 'data/sources/user_preferences.dart';
import 'presentation/modules/home/view/home_view.dart';
import 'presentation/modules/search/view/search_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = UserPreferences();
    return MaterialApp(
      title: 'Adpota y Sonrie',
      initialRoute: prefs.deafultRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        '/filter-location': (context) => const LocationView(),
        '/filter-search': (context) => const SearchView(),
        '/login': (context) => LoginView(),
        '/register': (context) => RegisterView(),
        '/home': (context) => const HomeView(),
        '/layout': (context) => const LayoutView(),
      },
    );
  }
}