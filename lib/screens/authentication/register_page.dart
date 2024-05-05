import 'package:flutter/material.dart';

import '../../app_properties.dart';
import '../../widgets/authentication_form.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xFFF5BC5D),
      body: Stack(
        children: [
          Container(color: transparentYellow),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 3),
                Text(
                  'Glad to Meet You',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Text(
                  'Create your new account for future uses.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const Spacer(flex: 2),
                AuthenticationForm(
                  prompt: 'Register',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ResetPasswordPage(),
                    ),
                  ),
                  children: [
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
                ),
                const Spacer(flex: 2),
              ],
            ),
          ),
          Positioned(
            top: 35,
            left: 5,
            child: IconButton(
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
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
