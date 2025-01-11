import 'package:advanced_app/app/doc_app.dart';
import 'package:advanced_app/bloc_observer.dart';
import 'package:advanced_app/core/di/dependency_injection.dart';
import 'package:advanced_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  Bloc.observer = MyBlocObserver();
  runApp(const DocApp());
}
