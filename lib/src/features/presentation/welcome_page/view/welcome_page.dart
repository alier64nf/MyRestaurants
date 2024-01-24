import 'dart:ui';

import 'package:delivery_app/src/features/presentation/communs_widgets/hedear_title.dart';
import 'package:delivery_app/src/features/presentation/communs_widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //position: DecorationPosition.background,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/spaguetti_with_friends.jpg',
                  ))),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: headerTitle(
                  context,
                  'Delivery Fast food to your door'.toUpperCase(),
                  Theme.of(context).colorScheme.onBackground,
                  Theme.of(context).textTheme.displaySmall!,
                  FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 40,
              ),
              margin: const EdgeInsets.only(bottom: 30),
              child: headerTitle(
                  context,
                  'Set exact location to find the right restaurants near you',
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.6),
                  Theme.of(context).textTheme.titleMedium!,
                  FontWeight.bold),
            ),
            //Widget Personalizado recibe una funcion, icono?, colors?, context,
            RoundedButton(
                context,
                () => Navigator.pushNamed(context, 'LoginPage'),
                'Log in',
                null,
                null,
                null,
                null),
            RoundedButton(
                context,
                () => Navigator.pushNamed(context, 'WelcomePage'),
                'Connect with Facebook',
                Icons.facebook_outlined,
                Theme.of(context).buttonTheme.colorScheme?.onPrimary,
                null,
                null),
          ],
        )
      ],
    );
  }
}
