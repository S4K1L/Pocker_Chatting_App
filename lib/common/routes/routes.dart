import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocker/feature/auth/pages/login_page.dart';
import 'package:pocker/feature/auth/pages/user_info_page.dart';
import 'package:pocker/feature/welcome/pages/verification_page.dart';
import 'package:pocker/feature/welcome/pages/welcome_page.dart';

class Routes {
  static const String welcome = "welcome";
  static const String login = "login";
  static const String verification = "verification";
  static const String userinfo = "userinfo";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(
          builder: (context) => const WelcomePage(),
        );
      case login:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => VerificationPage(
            smsCodeId: args['smsCodeId'],
            phoneNumber: args['phoneNumber'],
          ),
        );
      case userinfo:
        return MaterialPageRoute(
          builder: (context) => const UserInfoPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (contex) => const Scaffold(
            body: Center(
              child: Text('No Page Route Provided'),
            ),
          ),
        );
    }
  }
}
