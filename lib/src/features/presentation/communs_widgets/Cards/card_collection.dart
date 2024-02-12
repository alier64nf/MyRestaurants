import 'dart:ui';

import 'package:flutter/material.dart';

import '../Headers/hedear_title.dart';

int num_place = 129;
Widget cardCollection(BuildContext context, bool isVertical_card) {
  return Container(
    margin: isVertical_card ? null : EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
    ),
    child: Stack(alignment: Alignment.center, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: isVertical_card ? null : 250,
          height: isVertical_card ? 350 : 170,
          //position: DecorationPosition.background,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/spaguetti_with_friends.jpg',
                  ))),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
      ),
      Column(
        mainAxisAlignment:
            isVertical_card ? MainAxisAlignment.end : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5.0),
            child: headerTitle(
                context,
                "Asia",
                Theme.of(context).colorScheme.onBackground,
                isVertical_card
                    ? Theme.of(context).textTheme.titleLarge!
                    : Theme.of(context).textTheme.headlineSmall!,
                null),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: isVertical_card ? EdgeInsets.only(bottom: 20) : null,
            child: headerTitle(
                context,
                "$num_place Asia",
                Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                isVertical_card
                    ? Theme.of(context).textTheme.labelMedium!
                    : Theme.of(context).textTheme.titleSmall!,
                FontWeight.normal),
          ),
        ],
      ),
    ]),
  );
}
