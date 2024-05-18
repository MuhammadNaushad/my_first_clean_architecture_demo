import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_first_clean_architecture_demo/data/repository/firebase_user_repository.dart';
import 'package:my_first_clean_architecture_demo/data/repository/rest_api_user_repository.dart';
import 'package:my_first_clean_architecture_demo/data/repository/user_repository.dart';
import 'package:my_first_clean_architecture_demo/features/auth/screens/signup.dart';

import 'screens/user_list.dart';

final GetIt getIt = GetIt.instance;

void main() {
  getIt.registerLazySingleton<UserRepository>(() => FirebaseUserRepository());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUpScreen(),
    );
  }
}
