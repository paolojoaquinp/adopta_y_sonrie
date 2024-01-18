import 'package:adopta_y_sonrie/app/data/sources/user_preferences.dart';
import 'package:adopta_y_sonrie/app/presentation/modules/auth/login/view/login_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'app/data/repositories_impl/animals_repository_impl.dart';
import 'app/data/services/remote/animals_api.dart';
import 'app/domain/repositories/animals_repository.dart';
import 'app/my_app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final prefs = UserPreferences();
  await prefs.initPrefs();
  runApp(MultiProvider(
    providers: [
      Provider<AnimalsRepository>(
        create: (_) => AnimalsRepositoryImpl(
          PetFinderApi(Client())
        ),
      ),
    ],
    child: const MyApp(),
  ));
}
