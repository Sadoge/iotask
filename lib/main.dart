import 'package:flutter/material.dart';
import 'package:iotask/injectable_config.dart';
import 'package:iotask/src/core/styles/app_colors.dart';
import 'package:iotask/src/features/authentication/presentation/views/login_screen.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue),
          scaffoldBackgroundColor: AppColors.backgroundGrey,
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      );
}
