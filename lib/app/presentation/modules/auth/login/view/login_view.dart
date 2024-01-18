import 'package:adopta_y_sonrie/app/data/repositories_impl/user_auth_repository_impl.dart';
import 'package:adopta_y_sonrie/app/my_app.dart';
import 'package:flutter/material.dart';

import '../../../../../data/sources/user_preferences.dart';

class LoginView extends StatelessWidget {
  final UserAuthRepositoryImpl _auth = UserAuthRepositoryImpl(); 
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prefs = UserPreferences();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text('Iniciar Sesión', style: Theme.of(context).textTheme.headline5!.copyWith(color: Color(0xff6503b6) )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Image.asset('assets/pet-finder-logo.png', height: 100, fit: BoxFit.cover,),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            TextFormField(
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
            TextFormField(
              cursorColor: Colors.purple  ,
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 46),
                primary: Color(0xff6503b6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () async {
                _auth.signInWithEmailAndPassword('email', 'password').then((value) {
                  prefs.deafultRoute = '/layout';
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp())
                  );
                });
              },
              child: const Text('Iniciar Sesión', style: TextStyle(fontSize: 16),),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Registrarse',style: TextStyle(color: Color(0xff6503b6),fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}