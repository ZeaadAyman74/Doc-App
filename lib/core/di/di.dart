import 'package:advanced_app/core/routing/router.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init(){
    sl.registerLazySingleton(() => AppRouter());
  }
}