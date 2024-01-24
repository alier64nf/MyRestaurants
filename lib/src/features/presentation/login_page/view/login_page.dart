import 'package:delivery_app/src/features/presentation/communs_widgets/hedear_title.dart';
import 'package:delivery_app/src/features/presentation/communs_widgets/rounded_Input.dart';
import 'package:delivery_app/src/features/presentation/communs_widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          systemStatusBarContrastEnforced: true,
          statusBarIconBrightness: Brightness.light,
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
        headerTitle(context, "Welcome back", null,
            Theme.of(context).textTheme.headlineMedium!, null),

        Container(
          margin: const EdgeInsets.only(bottom: 40),
          padding: const EdgeInsets.only(top: 20),
          child: headerTitle(
              context,
              "Login to your account",
              Theme.of(context).disabledColor,
              Theme.of(context).textTheme.bodyLarge!,
              FontWeight.normal),
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
            child: headerTitle(
                context,
                "Forgot your password ?",
                Theme.of(context).colorScheme.background,
                Theme.of(context).textTheme.bodyLarge!,
                null),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              headerTitle(
                  context,
                  " Don't have an account ?",
                  Theme.of(context).disabledColor,
                  Theme.of(context).textTheme.bodyLarge!,
                  FontWeight.normal),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'SignUpPage'),
                child: headerTitle(
                    context,
                    " Sign Up ",
                    Theme.of(context).buttonTheme.colorScheme!.onSecondary,
                    Theme.of(context).textTheme.bodyLarge!,
                    null),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
