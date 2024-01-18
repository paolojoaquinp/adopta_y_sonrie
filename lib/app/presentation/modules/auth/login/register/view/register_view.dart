import 'package:adopta_y_sonrie/app/data/sources/user_preferences.dart';
import 'package:flutter/material.dart';

import '../../../../../../data/repositories_impl/user_auth_repository_impl.dart';

class RegisterView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController(); 
  final UserAuthRepositoryImpl _auth = UserAuthRepositoryImpl(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrate'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Image.asset('assets/pet-finder-logo.png', height: 100, fit: BoxFit.cover,),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            TextField(
              controller: emailController,
              cursorColor: Colors.purple  ,
              decoration: InputDecoration(
                floatingLabelStyle: TextStyle(color: Colors.purple),
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.email),
                prefixIconColor: MaterialStateColor.resolveWith((states) =>
                  states.contains(MaterialState.focused)
                      ? Colors.purple
                      : Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.purple),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            TextField(
              controller: passwordController,
              cursorColor: Colors.purple,
              decoration: InputDecoration(
                floatingLabelStyle: TextStyle(color: Colors.purple),
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: const Icon(Icons.lock),
                prefixIconColor: MaterialStateColor.resolveWith((states) =>
                  states.contains(MaterialState.focused)
                      ? Colors.purple
                      : Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.purple),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ElevatedButton(
              onPressed: () {
                final email = emailController.text;
                final password = passwordController.text;
                _auth.createUserWithEmailAndPassword(email, password).then((value) {
                  final prefs = UserPreferences();
                  prefs.deafultRoute = '/layout';
                  Navigator.pushNamed(context, '/layout');
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                minimumSize: MaterialStateProperty.all(const Size(double.infinity, 46))
              ),
              child: const Text('Registrarme'),
            ),
          ],
        ),
      ),
    );
  }
}