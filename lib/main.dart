import 'package:flutter/material.dart';
import 'package:yardie_river_tours/app_screens/calender_screen.dart';
import 'package:yardie_river_tours/app_screens/food_screen.dart';
import 'package:yardie_river_tours/app_screens/gallery_screen.dart';
import 'package:yardie_river_tours/app_screens/home_screen.dart';
import 'package:yardie_river_tours/app_screens/profile_screen.dart';
import 'package:yardie_river_tours/splash/splash_screen.dart';
import 'Auth_Screens/forgot_password_screen.dart';
import 'Auth_Screens/login_screen.dart';
import 'Auth_Screens/onboarding_screen.dart';
import 'Auth_Screens/reset_password_screen.dart';
import 'Auth_Screens/signup_screen.dart';
import 'Auth_Screens/verify_code_screen.dart';


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
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/verify-code': (context) => const VerifyCodeScreen(),
        '/reset-password': (context) => const ResetPasswordScreen(),
        '/home-screen': (context) => const HomeScreen(),
        '/food-screen': (context) => const FoodScreen(),
        '/gallery-screen': (context) => const GalleryScreen(),
        '/calender-screen': (context) => const CalendarScreen(),
        '/profile-screen': (context) => const ProfileScreen(),

      },
    );
  }
}
