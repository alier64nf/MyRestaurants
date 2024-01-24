import 'package:delivery_app/src/features/presentation/communs_widgets/hedear_title.dart';
import 'package:flutter/material.dart';

Widget headerAction(BuildContext context, String title, String titleButton) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      headerTitle(
          context, title, null, Theme.of(context).textTheme.titleLarge!, null),
      GestureDetector(
        child: Row(
          children: [
            headerTitle(context, titleButton, null,
                Theme.of(context).textTheme.bodyMedium!, FontWeight.normal),
            const Icon(
              Icons.play_arrow,
              size: 19,
            )
          ],
        ),
      )
    ],
  );
}
