import 'package:delivery_app/src/features/presentation/communs_widgets/hedear_title.dart';
import 'package:flutter/material.dart';

Widget headerAction(BuildContext context, void Function() function,
    String title, String titleButton, Color? color, IconData? icon) {
  Widget withIcon() {
    return Icon(
      icon,
      size: 19,
      color: color,
    );
  }

  Widget empty = const SizedBox(
    width: 0,
  );

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      headerTitle(
          context, title, null, Theme.of(context).textTheme.titleLarge!, null),
      GestureDetector(
        onTap: function,
        child: Row(
          children: [
            headerTitle(context, titleButton, color,
                Theme.of(context).textTheme.bodyMedium!, FontWeight.normal),
            icon != null ? withIcon() : empty,
          ],
        ),
      )
    ],
  );
}
