import 'package:flutter/material.dart';

Widget headerTitle(BuildContext context, String title, Color? color,
    TextStyle style, FontWeight? font) {
  return Text(
    title,
    softWrap: true,
    style: style.copyWith(
      color: color ?? Theme.of(context).colorScheme.background,
      fontWeight: font ?? FontWeight.w700,
      letterSpacing: 1.5,
    ),
  );
}
