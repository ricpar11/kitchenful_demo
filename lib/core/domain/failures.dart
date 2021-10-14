import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure {
  const NetworkFailure._();
  const factory NetworkFailure.noConnection() = _NoConection;
  const factory NetworkFailure.unexpected() = _Unexpected;
}
