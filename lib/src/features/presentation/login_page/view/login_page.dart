import 'package:delivery_app/src/features/presentation/widgets/rounded_Input.dart';
import 'package:delivery_app/src/features/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          systemStatusBarContrastEnforced: true,
          statusBarColor: Colors.transparent),
    );

    return Scaffold(
        body: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            const Image(
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/china_food.jpg')),
            Container(
                margin: const EdgeInsets.only(top: 30),
                child: BackButton(
                  color: Colors.white,
                  onPressed: () => {Navigator.pop(context)},
                )),
          ],
        ),
        //BorderRounded
        Transform.translate(
          offset: const Offset(0, -13.0),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: const Padding(padding: EdgeInsets.all(20)),
          ),
        ),
        //Title
        Text(
          " Welcome back",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.5,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 40),
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Login to your account",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).disabledColor,
                  letterSpacing: 1.5,
                ),
          ),
        ),
        RoundedInput(
          context,
          'example@gmail.com',
          'Email',
          TextInputType.emailAddress,
        ),
        RoundedInput(
          context,
          '*********',
          'Password',
          TextInputType.visiblePassword,
        ),
        RoundedButton(
            context,
            () => Navigator.pushNamed(context, 'TabsPage'),
            'Log in',
            null,
            Theme.of(context).buttonTheme.colorScheme?.onSecondary,
            40,
            null),
        Container(
          padding: const EdgeInsets.all(5),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'ForgotPasswordPage'),
            child: Text(
              "Forgot your password ?",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    letterSpacing: 1.5,
                  ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " Don't have an account ? ",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      letterSpacing: 1.5,
                      color: Colors.black54,
                    ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'SignUpPage'),
                child: Text(
                  " Sign Up ",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      letterSpacing: 1.5,
                      color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
