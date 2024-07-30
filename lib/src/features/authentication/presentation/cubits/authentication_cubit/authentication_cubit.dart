import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:iotask/src/features/authentication/domain/repositories/auth_repository.dart';
import 'package:iotask/src/features/authentication/presentation/cubits/authentication_cubit/authentication_state.dart';

@LazySingleton()
class AuthenticationCubit extends Cubit<AuthenticationState> {
  final AuthRepository _authRepository;

  AuthenticationCubit({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthenticationState.initial());

  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    emit(const AuthenticationState.pending());

    final authResponse =
        await _authRepository.signInWithEmail(email: email, password: password);

    authResponse.fold(
      (error) => emit(AuthenticationState.error(error.message)),
      (user) => emit(AuthenticationState.set(user)),
    );
  }
}
