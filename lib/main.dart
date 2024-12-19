import 'package:flutter/material.dart';

import 'package:yardie_river_tours/splash/splash_screen.dart';
import 'Auth_Screens/login_screen.dart';
import 'Auth_Screens/onboarding_screen.dart';
import 'Auth_Screens/signup_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yardy river tours',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        
      },
    );
  }
}
