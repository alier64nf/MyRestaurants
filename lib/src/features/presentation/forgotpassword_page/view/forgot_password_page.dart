import 'package:delivery_app/src/features/presentation/communs_widgets/Alerts/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../communs_widgets/Buttons/rounded_Input.dart';
import '../../communs_widgets/Buttons/rounded_button.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: BackButton(
              color: Colors.black,
              onPressed: () => {Navigator.pop(context)},
            )),
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 60),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        " Forgot  password ",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Colors.black87,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.5,
                            ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 30),
                      child: Text(
                        "Please enter your email address. You will receive a link to create a new password via email",
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.black54,
                                  letterSpacing: 1.5,
                                  textBaseline: TextBaseline.ideographic,
                                ),
                      ),
                    ),
                    RoundedInput(
                      context,
                      'example@gmail.com',
                      'Your email here',
                      TextInputType.emailAddress,
                    ),
                    RoundedButton(
                        context,
                        () => alertDialog(
                            context,
                            () => Navigator.pushNamed(context, 'LoginPage'),
                            'Your password has been reset',
                            "Your'll shortly receive an email with a code to setup a new password",
                            FontAwesomeIcons.arrowsRotate,
                            'Done',
                            null),
                        'Send',
                        null,
                        Theme.of(context).buttonTheme.colorScheme?.onSecondary,
                        40,
                        null),
                  ],
                ),
              )
            ]))
          ],
        )));
  }
}
