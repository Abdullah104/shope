import 'package:flutter/material.dart';

import '../app_properties.dart';

class AuthenticationForm extends StatelessWidget {
  final List<Widget> children;
  final String prompt;
  final VoidCallback onPressed;
  final double callToActionOffset;

  const AuthenticationForm({
    super.key,
    required this.children,
    required this.prompt,
    required this.onPressed,
    this.callToActionOffset = 0,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    const double callToActionHeight = 80;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 32,
            right: 16,
            bottom: callToActionHeight / 2 + 8,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(16),
            ),
          ),
          child: Column(
            children: [
              for (final child in children) ...[
                const SizedBox(height: 8),
                child,
              ],
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(0, (-callToActionHeight / 2) + callToActionOffset),
          child: InkWell(
            onTap: onPressed,
            child: Container(
              width: width / 2,
              height: callToActionHeight,
              decoration: BoxDecoration(
                gradient: mainButton,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.16),
                    offset: const Offset(0, 5),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  prompt,
                  style: const TextStyle(
                    color: Color(0xFFFEFEFE),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
