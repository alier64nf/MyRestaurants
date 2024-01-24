import 'package:delivery_app/src/features/presentation/communs_widgets/hedear_title.dart';
import 'package:flutter/material.dart';

Widget cardOnRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(
          'assets/images/Industrial_restaurant2.jpg',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.5),
            child: headerTitle(context, "Analier's delicius food", null,
                Theme.of(context).textTheme.titleSmall!, null),
          ),
          Padding(
            padding: const EdgeInsets.all(2.5),
            child: headerTitle(
                context,
                "3ra y 70 Playa",
                Theme.of(context).disabledColor,
                Theme.of(context).textTheme.bodySmall!,
                FontWeight.normal),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.star_rate,
                    color:
                        Theme.of(context).buttonTheme.colorScheme!.onSecondary,
                    size: 15),
                headerTitle(context, "4.8", null,
                    Theme.of(context).textTheme.bodySmall!, null),
                headerTitle(
                    context,
                    "(223 ratings)",
                    Theme.of(context).disabledColor,
                    Theme.of(context).textTheme.bodySmall!,
                    FontWeight.normal),
                //______Button state restaurant Delivery_____________
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context)
                          .buttonTheme
                          .colorScheme!
                          .onSecondary),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () => {},
                    child: headerTitle(
                        context,
                        "Free delivery",
                        Theme.of(context).colorScheme.onBackground,
                        Theme.of(context).textTheme.labelSmall!,
                        null),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
