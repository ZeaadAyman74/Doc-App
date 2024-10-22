import 'package:advanced_app/app/doc_app.dart';
import 'package:advanced_app/bloc_observer.dart';
import 'package:advanced_app/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  ServiceLocator().init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.red, statusBarColor: Colors.green));
  Bloc.observer = MyBlocObserver();
  runApp(const DocApp());
}
