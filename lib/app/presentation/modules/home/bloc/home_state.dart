
import 'package:adopta_y_sonrie/app/domain/failures/http_request_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/animal/animal.dart';
part'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.loading() = _Loading;
  factory HomeState.failed(HttpRequestFailure failure) = _Failed;
  factory HomeState.loaded({
    required List<Animal> animals,
  }) = _Loaded; 
}