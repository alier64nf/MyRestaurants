import 'dart:ui';

import 'package:delivery_app/src/features/presentation/communs_widgets/hedear_title.dart';
import 'package:flutter/material.dart';

Widget cardCollection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: Stack(alignment: Alignment.center, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(
          'assets/images/foodtrukey_health.jpg',
          width: 250,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        //position: DecorationPosition.background,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/spaguetti_with_friends.jpg',
                ))),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
          child: Container(
            color: Colors.black.withOpacity(0.6),
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          headerTitle(
              context,
              "Turkey's food",
              Theme.of(context).colorScheme.onBackground,
              Theme.of(context).textTheme.titleLarge!,
              null),
        ],
      ),
    ]),
  );
}
