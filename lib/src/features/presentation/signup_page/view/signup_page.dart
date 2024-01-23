import 'package:delivery_app/src/features/presentation/widgets/rounded_Input.dart';
import 'package:delivery_app/src/features/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          systemStatusBarContrastEnforced: true,
          statusBarColor: Colors.transparent),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            margin: const EdgeInsets.only(top: 30),
            child: BackButton(
              onPressed: () => {Navigator.pop(context)},
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              //Title
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  " Create an account",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                      ),
                ),
              ),
              RoundedInput(
                context,
                '',
                'Username',
                TextInputType.name,
              ),
              RoundedInput(
                context,
                'example@gmail.com',
                'Email',
                TextInputType.emailAddress,
              ),
              RoundedInput(
                context,
                '',
                'PhoneNumber',
                TextInputType.phone,
              ),
              RoundedInput(
                context,
                '',
                'Date of Birth',
                TextInputType.datetime,
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
                  'Sign up',
                  null,
                  Theme.of(context).buttonTheme.colorScheme?.onSecondary,
                  40,
                  null),
              Container(
                padding: const EdgeInsets.all(5),
                child: GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, 'ForgotPasswordPage'),
                  child: Text(
                    'By clicking Sig Up your are agree with the following\bTerms and Conditions\bwithout reservations',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
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
                      " Already I have an account ? ",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            letterSpacing: 1.5,
                            color: Colors.black54,
                          ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'LoginPage'),
                      child: Text(
                        " Log in ",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            letterSpacing: 1.5,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
