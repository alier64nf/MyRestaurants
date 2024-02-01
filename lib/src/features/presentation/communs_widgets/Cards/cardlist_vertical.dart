import 'package:flutter/material.dart';

import '../Headers/hedear_title.dart';

Widget cardOnRow(
    BuildContext context,
    String pathImage,
    String title,
    String address,
    int? ratings,
    String? labelButton,
    double? level,
    double? widthImage,
    double? heightImage,
    bool hasButton) {
  Widget withButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
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
    );
  }

  Widget empty = Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    padding: const EdgeInsets.all(4),
    width: 90,
  );
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          pathImage,
          width: 90,
          height: 90,
          fit: BoxFit.cover,
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(2.5),
            child: headerTitle(context, title, null,
                Theme.of(context).textTheme.titleSmall!, null),
          ),
          Container(
            padding: const EdgeInsets.all(2.5),
            margin: const EdgeInsets.only(bottom: 5.5),
            child: headerTitle(
                context,
                address,
                Theme.of(context).disabledColor,
                Theme.of(context).textTheme.bodySmall!,
                FontWeight.normal),
          ),
          Container(
            padding: const EdgeInsets.all(2.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.star_rate,
                    color:
                        Theme.of(context).buttonTheme.colorScheme!.onSecondary,
                    size: 15),
                headerTitle(context, level.toString(), null,
                    Theme.of(context).textTheme.bodySmall!, null),
                headerTitle(
                    context,
                    "($ratings ratings)",
                    Theme.of(context).disabledColor,
                    Theme.of(context).textTheme.bodySmall!,
                    FontWeight.normal),
                //______Button state restaurant Delivery_____________
                hasButton ? withButton() : empty,
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
