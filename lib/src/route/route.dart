import 'package:flutter/material.dart';

//Pages of App
import 'package:delivery_app/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:delivery_app/src/features/presentation/login_page/view/login_page.dart';
import 'package:delivery_app/src/features/presentation/forgotpassword_page/view/forgot_password_page.dart';
import 'package:delivery_app/src/features/presentation/tabs_page/tabs_page.dart';
import 'package:delivery_app/src/features/presentation/signup_page/view/signup_page.dart';

final routes = <String, WidgetBuilder>{
  'WelcomePage': (BuildContext context) => const WelcomePage(),
  'LoginPage': (BuildContext context) => const LoginPage(),
  'ForgotPasswordPage': (BuildContext context) => const ForgotPasswordPage(),
  'SignUpPage': (BuildContext context) => const SignUpPage(),
  'TabsPage': (BuildContext context) => const TabsPage(),
};
