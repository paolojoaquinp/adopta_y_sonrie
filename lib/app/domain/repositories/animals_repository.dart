


import 'package:adopta_y_sonrie/app/domain/failures/http_request_failure.dart';
import 'package:adopta_y_sonrie/app/domain/models/animal/animal.dart';

import '../either/either.dart';

typedef GetAnimalsFuture = Future<Either<HttpRequestFailure,Animals>>;

abstract class AnimalsRepository {
  GetAnimalsFuture getAnimals();
  GetAnimalsFuture getAnimalsNext(String? page);
  GetAnimalsFuture getAnimalsByType(String type, int page);
  GetAnimalsFuture getAnimalsNextByType(String type, String page);
}