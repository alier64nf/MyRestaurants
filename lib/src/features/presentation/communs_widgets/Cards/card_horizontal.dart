import 'package:flutter/material.dart';

import '../Headers/hedear_title.dart';

Widget cardOnColumn(
    BuildContext context,
    String pathImage,
    String title,
    String address,
    int? ratings,
    String? labelButton,
    double? level,
    double? widthImage,
    double? heightImage) {
  Widget infoCardWithButton() {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.star_rate,
              color: Theme.of(context).buttonTheme.colorScheme!.onSecondary,
              size: 15),
          headerTitle(context, level.toString(), null,
              Theme.of(context).textTheme.bodySmall!, null),
          headerTitle(
              context,
              "($ratings ratings)",
              Theme.of(context).disabledColor,
              Theme.of(context).textTheme.bodySmall!,
              FontWeight.normal),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).buttonTheme.colorScheme!.onSecondary),
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () => {},
              child: headerTitle(
                  context,
                  labelButton!,
                  Theme.of(context).colorScheme.onBackground,
                  Theme.of(context).textTheme.labelSmall!,
                  null),
            ),
          )
        ],
      ),
    );
  }

  Widget empty = const SizedBox(
    width: 0,
  );

  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            pathImage,
            width: widthImage ?? 210,
            height: heightImage ?? 250,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.5),
              child: headerTitle(context, title, null,
                  Theme.of(context).textTheme.titleSmall!, null),
            ),
            Padding(
              padding: const EdgeInsets.all(2.5),
              child: headerTitle(
                  context,
                  address,
                  Theme.of(context).disabledColor,
                  Theme.of(context).textTheme.bodySmall!,
                  FontWeight.normal),
            ),
            labelButton != null ? infoCardWithButton() : empty,
          ],
        ),
      ],
    ),
  );
}
