import 'package:flutter/material.dart';

import 'authentication/welcome_back_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> _opacity;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );

    _opacity = Tween(begin: 1.0, end: 0.0).animate(_controller)
      ..addListener(_onAnimationChanged);

    _controller.forward().then((_) => _navigationPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5BC5D),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Opacity(
                opacity: _opacity.value,
                child: Image.asset('assets/logo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: 'Powered by '),
                    TextSpan(
                      text: 'int2.io',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _opacity.removeListener(_onAnimationChanged);

    _controller.removeListener(_onAnimationChanged);
    _controller.dispose();

    super.dispose();
  }

  void _onAnimationChanged() => setState(() {});

  void _navigationPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeBackPage()),
    );
  }
}
