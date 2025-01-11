import 'package:advanced_app/core/networking/api_service.dart';
import 'package:advanced_app/core/networking/dio_factory.dart';
import 'package:advanced_app/core/routing/router.dart';
import 'package:advanced_app/features/login/data/repos/login_repo.dart';
import 'package:advanced_app/features/login/logic/login_cubit.dart';
import 'package:advanced_app/features/signup/data/repos/sign_up_repo.dart';
import 'package:advanced_app/features/signup/logic/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// sl => service locator
final sl = GetIt.instance;

class ServiceLocator {
  void _registerModule<Repo extends Object, Cubit extends Object>(
    Repo Function(ApiService apiService) repoConstructor,
    Cubit Function(Repo repo) cubitConstructor,
  ) {
    sl.registerLazySingleton<Repo>(() => repoConstructor(sl<ApiService>()));
    sl.registerLazySingleton<Cubit>(() => cubitConstructor(sl<Repo>()));
  }

  void init() {
    sl.registerLazySingleton<AppRouter>(() => AppRouter());

    Dio dio = DioFactory.getDio();
    sl.registerLazySingleton<ApiService>(() => ApiService(dio));

    // login
    _registerModule<LoginRepo, LoginCubit>(
        (apiService) => LoginRepo(apiService), (repo) => LoginCubit(repo));

    // Sign Up
    _registerModule<SignUpRepo, SignUpCubit>(
        (apiService) => SignUpRepo(apiService), (repo) => SignUpCubit(repo));

  }
}
