import 'dart:ui';

import 'package:delivery_app/src/features/presentation/widgets/rounded_button.dart';
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
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Delivery Fast food to your door'.toUpperCase(),
                style:
                    Theme.of(context).primaryTextTheme.displayMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 40,
              ),
              margin: const EdgeInsets.only(bottom: 30),
              child: Text(
                'Set exact location to find the right restaurants near you',
                style: Theme.of(context).primaryTextTheme.titleMedium?.copyWith(
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                    ),
              ),
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
