import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

const usersCollection = 'users';

abstract class AuthRemoteDataSource {
  Future<RecordAuth> signInWithEmail({
    required String email,
    required String password,
  });
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final PocketBase _pocketBase;

  AuthRemoteDataSourceImpl({
    required PocketBase pocketBase,
  }) : _pocketBase = pocketBase;

  @override
  Future<RecordAuth> signInWithEmail({
    required String email,
    required String password,
  }) async {
    return await _pocketBase
        .collection(usersCollection)
        .authWithPassword(email, password);
  }
}
