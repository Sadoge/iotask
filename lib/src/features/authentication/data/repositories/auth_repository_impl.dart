import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:iotask/src/core/error/failures.dart';
import 'package:iotask/src/features/authentication/data/models/user_model.dart';
import 'package:iotask/src/features/authentication/domain/entities/user.dart';
import 'package:iotask/src/features/authentication/domain/repositories/auth_repository.dart';
import 'package:iotask/src/features/authentication/data/datasources/auth_remote_data_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl({required AuthRemoteDataSource authRemoteDataSource})
      : _authRemoteDataSource = authRemoteDataSource;

  @override
  Future<Either<Failure, User>> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final recordAuth = await _authRemoteDataSource.signInWithEmail(
        email: email,
        password: password,
      );

      if (recordAuth.record != null) {
        return Right(UserModel.fromRecord(recordAuth.record!));
      } else {
        return const Left(ServerFailure());
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
      return const Left(ServerFailure());
    }
  }
}
