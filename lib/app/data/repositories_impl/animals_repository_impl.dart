
import 'package:adopta_y_sonrie/app/domain/repositories/animals_repository.dart';

import '../services/remote/animals_api.dart';

class AnimalsRepositoryImpl implements AnimalsRepository {
  final PetFinderApi _api;
  AnimalsRepositoryImpl(this._api);
  
  @override
  GetAnimalsFuture getAnimals() {
    return _api.getAnimals();
  }
  
  @override
  GetAnimalsFuture getAnimalsByType(String type, int page) {
    return _api.getAnimalsByType(type, page);
  }
  
  @override
  GetAnimalsFuture getAnimalsNext(String? page) {
    return _api.getAnimalsNext(page);
  }
  
  @override
  GetAnimalsFuture getAnimalsNextByType(String type, String page) {
    return _api.getAnimalsNextByType(type, page);
  }
  
}