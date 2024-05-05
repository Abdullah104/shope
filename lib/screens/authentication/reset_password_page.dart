import 'package:flutter/material.dart';

import '../../layouts/authentication_layout.dart';
import '../../widgets/custom_text_field.dart';
import 'confirm_otp_page.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: '46834683');
  }

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      headerFlex: null,
      headerTitle: 'Forgot your\nPassword?',
      headerSubtitle: 'Enter your registered mobile number to get the otp',
      flexBetweenHeaderAndForm: 1,
      form: [
        CustomTextField(
          controller: _controller,
        ),
      ],
      prompt: 'Send OTP',
      primaryCallToActionOffset: 32,
      onPrimaryCallToActionPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const ConfirmOtpPage(),
        ),
      ),
      flexBetweenFormAndFooter: null,
      footerTitle: 'Didn\'t receive the OTP? ',
      footerSubtitle: 'Resend again',
      footerFlex: 4,
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
