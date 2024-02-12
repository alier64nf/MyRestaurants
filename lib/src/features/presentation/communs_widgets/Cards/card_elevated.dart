import 'dart:core';

import 'package:flutter/material.dart';

import '../Headers/hedear_title.dart';
import 'cardlist_vertical.dart';

class CardElevatedWid extends StatefulWidget {
  CardElevatedWid({
    super.key,
    required this.pathImage,
    required this.title,
    this.address,
    this.ratings,
    this.labelButton,
    this.colorLabelButton = Colors.black,
    this.level,
    this.widthImage,
    this.heightImage,
    this.hasButton = false,
  });

  String pathImage;
  String title;
  String? address;
  int? ratings;
  String? labelButton;
  Color? colorLabelButton;
  double? level;
  double? widthImage;
  double? heightImage;
  bool hasButton;

  @override
  _CardElevatedWid createState() => _CardElevatedWid();
}

class _CardElevatedWid extends State<CardElevatedWid> {
  bool isFavorite = false;
  @override
  void initState() {
    super.initState();
  }

  Widget withButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).buttonTheme.colorScheme!.onSecondary),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () => {},
        child: headerTitle(
            context,
            widget.labelButton!,
            Theme.of(context).colorScheme.onBackground,
            Theme.of(context).textTheme.labelSmall!,
            null),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            widget.pathImage,
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2.5),
                  child: headerTitle(context, widget.title, null,
                      Theme.of(context).textTheme.titleSmall!, null),
                ),
                IconButton(
                    icon: Icon(
                      Icons.bookmark,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                    onPressed: () => {
                          setState(() {
                            isFavorite = !isFavorite;
                          })
                        })
              ],
            ),
            Container(
              padding: const EdgeInsets.all(2.5),
              margin: const EdgeInsets.only(bottom: 5.5),
              child: headerTitle(
                  context,
                  widget.address!,
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
                      color: Theme.of(context)
                          .buttonTheme
                          .colorScheme!
                          .onSecondary,
                      size: 15),
                  headerTitle(context, widget.level.toString(), null,
                      Theme.of(context).textTheme.bodySmall!, null),
                  headerTitle(
                      context,
                      "(${widget.ratings} ratings)",
                      Theme.of(context).disabledColor,
                      Theme.of(context).textTheme.bodySmall!,
                      FontWeight.normal),
                  withButton(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
