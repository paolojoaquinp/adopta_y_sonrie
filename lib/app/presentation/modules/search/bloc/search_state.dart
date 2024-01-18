
import 'package:adopta_y_sonrie/app/domain/failures/http_request_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/animal/animal.dart';
part'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState.initial() = _Initial;
  factory SearchState.loading() = _Loading;
  factory SearchState.failed(HttpRequestFailure failure) = _Failed;
  factory SearchState.loaded({
    required Animals animals,
    String? type,
  }) = _Loaded; 
}