
import 'package:adopta_y_sonrie/app/domain/repositories/animals_repository.dart';

import '../services/remote/animals_api.dart';

class AnimalsRepositoryImpl implements AnimalsRepository {
  final PetFinderApi _api;
  AnimalsRepositoryImpl(this._api);
  
  @override
  GetAnimalsFuture getAnimals(String type, int page) {
    return _api.getAnimals(type, page);
  }
  
}