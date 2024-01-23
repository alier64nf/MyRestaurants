import 'package:delivery_app/src/features/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

alertDialog(BuildContext context, String title, String text, IconData? icon,
    Image? img) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog.adaptive(
            icon: Icon(
              icon,
              size: 90,
            ),
            iconColor: Theme.of(context).colorScheme.onPrimary,
            iconPadding:
                const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            title: Text(title),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            content: Container(
              height: 250,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.black54,
                            letterSpacing: 1.5,
                            textBaseline: TextBaseline.ideographic,
                          ),
                    ),
                  ),
                  RoundedButton(
                      context,
                      () => Navigator.pushNamed(context, 'LoginPage'),
                      'Done',
                      null,
                      Theme.of(context).buttonTheme.colorScheme?.onSecondary,
                      40,
                      null),
                ],
              ),
            ));
      });
}
