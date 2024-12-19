import 'dart:async';
import 'package:flutter/material.dart';

import '../Auth_Screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rippleAnimation;

  @override
  void initState() {
    super.initState();

    // animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // timer for ripple effect
    );

    // animation for the ripple effect
    _rippleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOutCubicEmphasized,
      ),
    );

    // ripple animation repeat
    _animationController.repeat(reverse: true);

    // after the animation completes
    Future.delayed(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [

          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green.shade800, Colors.yellow],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // effect and animated text size
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // logo
                FadeTransition(
                  opacity: _rippleAnimation,
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(height: 30),

                // animated text
                TweenAnimationBuilder<double>(
                  duration: Duration(seconds: 5),
                  tween: Tween<double>(begin: 20, end: 27),
                  builder: (context, value, child) {
                    return RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: value,
                          fontWeight: FontWeight.bold,
                        ),
                        children: const [
                          TextSpan(text: "YARDY", style: TextStyle(color: Colors.green)),
                          TextSpan(text: " ", style: TextStyle(color: Colors.transparent)),
                          TextSpan(text: "RIVER", style: TextStyle(color: Colors.yellowAccent)),
                          TextSpan(text: " ", style: TextStyle(color: Colors.transparent)),
                          TextSpan(text: "ADVENTURE'S", style: TextStyle(color: Colors.blue)),

                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}