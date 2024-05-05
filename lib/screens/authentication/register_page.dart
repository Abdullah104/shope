import 'package:flutter/material.dart';

import '../../layouts/authentication_layout.dart';
import '../../widgets/custom_text_field.dart';
import 'reset_password_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordConfirmationController;

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController(text: 'example@email.com');
    _passwordController = TextEditingController(text: '12345678');
    _passwordConfirmationController = TextEditingController(text: '12345678');
  }

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      headerTitle: 'Glad to Meet You',
      headerSubtitle: 'Create your new account for future uses.',
      form: [
        CustomTextField(
          controller: _emailController,
        ),
        CustomTextField(
          controller: _passwordController,
          obscureText: true,
        ),
        CustomTextField(
          controller: _passwordConfirmationController,
          obscureText: true,
        ),
      ],
      prompt: 'Register',
      flexBetweenFormAndFooter: null,
      onPrimaryCallToActionPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const ResetPasswordPage(),
        ),
      ),
      footerFlex: 2,
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();

    super.dispose();
  }
}
