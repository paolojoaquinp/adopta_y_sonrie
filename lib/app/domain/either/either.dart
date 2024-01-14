
import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.freezed.dart';

@freezed
class Either<L,R> with _$Either {
  factory Either.left(L value) = _Left<L,R>;
  factory Either.right(R value) = _Right<L,R>;
}