import 'package:flutter/material.dart';

RoundedButton(
    BuildContext context,
    void Function() function,
    String text,
    IconData? icon,
    Color? colorB,
    double? verticalsize,
    double? horizontalsize) {
  Widget empty = const SizedBox(
    width: 0,
  );
  return Container(
    margin: EdgeInsets.symmetric(
        horizontal: horizontalsize ?? 40, vertical: verticalsize ?? 10),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      color: colorB ?? Theme.of(context).buttonTheme.colorScheme?.onSecondary,
    ),
    child: TextButton(
      onPressed: function,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon != null ? Icon(icon, color: Colors.white) : empty,
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              text,
              style: Theme.of(context).primaryTextTheme.labelLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
          ),
        ],
      ),
    ),
  );
}
