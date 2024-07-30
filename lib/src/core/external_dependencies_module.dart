import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

@module
abstract class ExternalDependenciesModule {
  @lazySingleton
  PocketBase get pb => PocketBase('http://127.0.0.1:8090');
}
