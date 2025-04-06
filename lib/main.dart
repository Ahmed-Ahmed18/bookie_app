import 'package:bookie_app/constants.dart';
import 'package:bookie_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData().copyWith(
         scaffoldBackgroundColor: kPrimaryColor
       ),
      home: SplashView(),
    );
  }
}


