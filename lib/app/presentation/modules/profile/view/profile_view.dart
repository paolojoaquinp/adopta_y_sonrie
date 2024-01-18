import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../data/repositories_impl/user_auth_repository_impl.dart';
import '../../../../data/sources/user_preferences.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  final auth = UserAuthRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.purple,
      minimumSize: Size(double.infinity, 46),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text('Mi Perfil', style: Theme.of(context).textTheme.headline5),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Icon(Icons.account_circle, size: 100),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            TextFormField(
              decoration: InputDecoration(
                labelText: auth.getUser().toString(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              enabled: false,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            /* TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              enabled: false,
            ), */
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            TextFormField(
              controller: TextEditingController(text: '********'),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              obscureText: true,
              enabled: false,
            ),
            const Expanded(child: SizedBox(),),
            ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () {
                auth.signOut().then((value) {
                  final prefs = UserPreferences();
                  prefs.deafultRoute = '/login';
                  Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                });
              },
              child: Text('Cerrar Sesion'),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ],
        ),
      ),
    );
  }
}