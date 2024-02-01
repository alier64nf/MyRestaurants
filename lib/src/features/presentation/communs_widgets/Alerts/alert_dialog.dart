import 'package:delivery_app/src/features/presentation/communs_widgets/Buttons/rounded_button.dart';
import 'package:flutter/material.dart';

Future alertDialog(
    BuildContext context,
    void Function() onTapButton,
    String title,
    String subtitle,
    IconData? icon,
    String labelButton,
    Image? img) async {
  await showDialog(
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
            content: SizedBox(
              height: 150,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      subtitle,
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
                      onTapButton,
                      labelButton,
                      null,
                      Theme.of(context).buttonTheme.colorScheme?.onSecondary,
                      10,
                      10),
                ],
              ),
            ));
      });
}
