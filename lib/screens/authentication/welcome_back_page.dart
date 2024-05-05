import 'package:flutter/material.dart';

import '../../app_properties.dart';
import '../../widgets/authentication_form.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xFFF5BC5D),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(color: transparentYellow),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 3),
                const Text(
                  'Welcome back Roberto,',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Text(
                  'Login to your account using\nMobile number',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const Spacer(flex: 2),
                AuthenticationForm(
                  prompt: 'Log In',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const RegisterPage(),
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
                  ],
                ),
                const Spacer(flex: 2),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot your password? ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 14,
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ResetPasswordPage(),
                          ),
                        ),
                        child: const Text(
                          'Reset password',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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

    super.dispose();
  }
}
