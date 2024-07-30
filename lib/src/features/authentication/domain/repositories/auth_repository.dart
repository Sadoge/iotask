import 'package:dartz/dartz.dart';
import 'package:iotask/src/core/error/failures.dart';
import 'package:iotask/src/features/authentication/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> signInWithEmail({
    required String email,
    required String password,
  });
}
