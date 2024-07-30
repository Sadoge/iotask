// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pocketbase/pocketbase.dart' as _i3;

import 'src/core/external_dependencies_module.dart' as _i8;
import 'src/features/authentication/data/datasources/auth_remote_data_source.dart'
    as _i4;
import 'src/features/authentication/data/repositories/auth_repository_impl.dart'
    as _i6;
import 'src/features/authentication/domain/repositories/auth_repository.dart'
    as _i5;
import 'src/features/authentication/presentation/cubits/authentication_cubit/authentication_cubit.dart'
    as _i7;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final externalDependenciesModule = _$ExternalDependenciesModule();
  gh.lazySingleton<_i3.PocketBase>(() => externalDependenciesModule.pb);
  gh.lazySingleton<_i4.AuthRemoteDataSource>(
      () => _i4.AuthRemoteDataSourceImpl(pocketBase: gh<_i3.PocketBase>()));
  gh.lazySingleton<_i5.AuthRepository>(() => _i6.AuthRepositoryImpl(
      authRemoteDataSource: gh<_i4.AuthRemoteDataSource>()));
  gh.lazySingleton<_i7.AuthenticationCubit>(
      () => _i7.AuthenticationCubit(authRepository: gh<_i5.AuthRepository>()));
  return getIt;
}

class _$ExternalDependenciesModule extends _i8.ExternalDependenciesModule {}
