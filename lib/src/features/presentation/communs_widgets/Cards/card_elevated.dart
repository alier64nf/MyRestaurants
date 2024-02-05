import 'dart:core';

import 'package:flutter/material.dart';

import '../Headers/hedear_title.dart';
import 'cardlist_vertical.dart';

class CardElevatedWid extends StatefulWidget {
  CardElevatedWid({
    super.key,
    required String pathImage,
    required String title,
    String? address,
    int? ratings,
    String? labelButton,
    Color? colorLabelButton,
    double? level,
    double? widthImage,
    double? heightImage,
    required bool hasbutton,
  });

  late String pathImage;
  late String title;
  late String address;
  late int? ratings;
  late String? labelButton;
  late double? level;
  late double? widthImage;
  late double? heightImage;
  bool isFavorite = false;

  @override
  _CardElevatedWid createState() => _CardElevatedWid();
}

class _CardElevatedWid extends State<CardElevatedWid> {
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
                    color: widget.isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: () => {},
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(2.5),
              margin: const EdgeInsets.only(bottom: 5.5),
              child: headerTitle(
                  context,
                  widget.address,
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
                      "($widget.ratings ratings)",
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











// cardElevatedWidget(
//     BuildContext context,
//     String pathImage,
//     String title,
//     String address,
//     int? ratings,
//     String? labelButton,
//     double? level,
//     double? widthImage,
//     double? heightImage,
//     bool isFavorite) {
//   //Boton delivery
//   Widget withButton() {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 10),
//       padding: const EdgeInsets.all(4),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           color: Theme.of(context).buttonTheme.colorScheme!.onSecondary),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(30),
//         onTap: () => {},
//         child: headerTitle(
//             context,
//             labelButton!,
//             Theme.of(context).colorScheme.onBackground,
//             Theme.of(context).textTheme.labelSmall!,
//             null),
//       ),
//     );
//   }
// //Usado para togglear el boton delivery
//   // Widget empty = Container(
//   //   margin: const EdgeInsets.symmetric(horizontal: 10),
//   //   padding: const EdgeInsets.all(4),
//   //   width: 90,
//   // );

//   //CUerpo del widget
//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       ClipRRect(
//         borderRadius: BorderRadius.circular(15),
//         child: Image.asset(
//           pathImage,
//           width: 90,
//           height: 90,
//           fit: BoxFit.cover,
//         ),
//       ),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(2.5),
//                 child: headerTitle(context, title, null,
//                     Theme.of(context).textTheme.titleSmall!, null),
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.bookmark,
//                   color: isFavorite ? Colors.red : Colors.grey,
//                 ),
//                 onPressed: () => {},
//               )
//             ],
//           ),
//           Container(
//             padding: const EdgeInsets.all(2.5),
//             margin: const EdgeInsets.only(bottom: 5.5),
//             child: headerTitle(
//                 context,
//                 address,
//                 Theme.of(context).disabledColor,
//                 Theme.of(context).textTheme.bodySmall!,
//                 FontWeight.normal),
//           ),
//           Container(
//             padding: const EdgeInsets.all(2.5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Icon(Icons.star_rate,
//                     color:
//                         Theme.of(context).buttonTheme.colorScheme!.onSecondary,
//                     size: 15),
//                 headerTitle(context, level.toString(), null,
//                     Theme.of(context).textTheme.bodySmall!, null),
//                 headerTitle(
//                     context,
//                     "($ratings ratings)",
//                     Theme.of(context).disabledColor,
//                     Theme.of(context).textTheme.bodySmall!,
//                     FontWeight.normal),
//                 withButton(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ],
//   );
// }
