import 'package:flutter/material.dart';
import 'package:pocker/common/routes/routes.dart';
import 'package:pocker/feature/auth/pages/login_page.dart';
import 'package:pocker/feature/widgets/privacy_and_terms.dart';
import '../../../common/utils/colors.dart';
import '../../../common/widgets/custom_elevated_button.dart';
import '../../widgets/language_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  navigateToLoginPage(context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: Coloors.blueDark,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Welcome to POKER',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const PrivacyAndTerms(),
                CustomElevatedButton(
                  onPressed: () => navigateToLoginPage(context),
                  text: 'AGREE AND CONTINUE',
                ),
                const SizedBox(height: 50),
                const LanguageButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
