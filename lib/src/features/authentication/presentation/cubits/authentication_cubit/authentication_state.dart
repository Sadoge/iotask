import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iotask/src/features/authentication/domain/entities/user.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.pending() = _Pending;
  const factory AuthenticationState.set(User user) = AuthenticationSetState;
  const factory AuthenticationState.error(String message) =
      AuthenticationErrorState;
}
