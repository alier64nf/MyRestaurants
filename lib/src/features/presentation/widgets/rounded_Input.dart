import 'package:flutter/material.dart';

RoundedInput(BuildContext context, String? hinText, String? labeText,
    TextInputType textinputType) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 30),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          hintText: hinText,
          labelText: labeText,
          labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.black54,
                letterSpacing: 1.5,
              ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.blueGrey),
          )),
      keyboardType: textinputType,
    ),
  );
}
