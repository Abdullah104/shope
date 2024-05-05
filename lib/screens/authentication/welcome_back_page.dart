import 'package:flutter/material.dart';

import '../../layouts/authentication_layout.dart';
import '../../widgets/custom_text_field.dart';
import 'register_page.dart';
import 'reset_password_page.dart';

class WelcomeBackPage extends StatefulWidget {
  const WelcomeBackPage({super.key});

  @override
  State<WelcomeBackPage> createState() => _WelcomeBackPageState();
}

class _WelcomeBackPageState extends State<WelcomeBackPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController(text: 'example@email.com');
    _passwordController = TextEditingController(text: '12345678');
  }

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      headerTitle: 'Welcome back Roberto,',
      headerSubtitle: 'Login to your account using\nMobile number',
      form: [
        CustomTextField(
          controller: _emailController,
        ),
        CustomTextField(
          controller: _passwordController,
          obscureText: true,
        ),
      ],
      prompt: 'Log In',
      onPrimaryCallToActionPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const RegisterPage(),
        ),
      ),
      footerTitle: 'Forgot your password? ',
      footerSubtitle: 'Reset password',
      onSecondaryCallToActionPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const ResetPasswordPage(),
        ),
      ),
      footerFlex: null,
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }
}
