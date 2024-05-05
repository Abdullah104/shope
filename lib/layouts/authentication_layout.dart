import 'package:flutter/material.dart';

import '../app_properties.dart';
import '../widgets/authentication_form.dart';

class AuthenticationLayout extends StatelessWidget {
  final int? headerFlex;
  final String headerTitle;
  final String headerSubtitle;
  final int flexBetweenHeaderAndForm;
  final List<Widget> form;
  final String prompt;
  final double primaryCallToActionOffset;
  final int? flexBetweenFormAndFooter;
  final VoidCallback onPrimaryCallToActionPressed;
  final String? footerTitle;
  final String? footerSubtitle;
  final VoidCallback onSecondaryCallToActionPressed;
  final int? footerFlex;

  AuthenticationLayout({
    super.key,
    this.headerFlex = 3,
    required this.headerTitle,
    required this.headerSubtitle,
    this.flexBetweenHeaderAndForm = 2,
    required this.form,
    required this.prompt,
    this.primaryCallToActionOffset = 0,
    this.flexBetweenFormAndFooter = 2,
    required this.onPrimaryCallToActionPressed,
    this.footerTitle,
    this.footerSubtitle,
    this.footerFlex = 2,
    VoidCallback? onSecondaryCallToActionPressed,
  }) : onSecondaryCallToActionPressed =
            (onSecondaryCallToActionPressed ?? () {});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xFFF5BC5D),
      child: Scaffold(
        backgroundColor: transparentYellow,
        appBar: Navigator.canPop(context)
            ? AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                surfaceTintColor: Colors.transparent,
                leading: const BackButton(color: Colors.white),
              )
            : null,
        body: Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (headerFlex != null) Spacer(flex: headerFlex!),
              Text(
                headerTitle,
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
              Text(
                headerSubtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Spacer(flex: flexBetweenHeaderAndForm),
              AuthenticationForm(
                prompt: prompt,
                onPressed: onPrimaryCallToActionPressed,
                callToActionOffset: primaryCallToActionOffset,
                children: form,
              ),
              if (flexBetweenFormAndFooter != null)
                Spacer(flex: flexBetweenFormAndFooter!),
              if (footerTitle != null || footerSubtitle != null)
                Padding(
                  padding: EdgeInsets.only(bottom: footerFlex == null ? 24 : 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (footerTitle != null)
                        Text(
                          footerTitle!,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        ),
                      if (footerTitle != null)
                        InkWell(
                          onTap: onSecondaryCallToActionPressed,
                          child: Text(
                            footerSubtitle!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              if (footerFlex != null) Spacer(flex: footerFlex!),
            ],
          ),
        ),
      ),
    );
  }
}
