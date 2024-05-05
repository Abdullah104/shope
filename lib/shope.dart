import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

class Shope extends StatelessWidget {
  const Shope({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shope',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        canvasColor: Colors.transparent,
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
      ),
      home: GestureDetector(
        onTap: () => _unfocus(context),
        child: const SplashScreen(),
      ),
    );
  }

  void _unfocus(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
