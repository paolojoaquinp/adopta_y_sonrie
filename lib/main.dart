import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import 'app/data/repositories_impl/animals_repository_impl.dart';
import 'app/data/services/remote/animals_api.dart';
import 'app/domain/repositories/animals_repository.dart';
import 'app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
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
