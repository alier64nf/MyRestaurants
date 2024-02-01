import 'package:flutter/material.dart';

import '../../../communs_widgets/Headers/hedear_title.dart';

class Cuisines extends StatefulWidget {
  const Cuisines({super.key});

  @override
  State<Cuisines> createState() => _CuisinesState();
}

class _CuisinesState extends State<Cuisines> {
  dynamic map = {"cuisines": 'American', "isActive": false};
  List<Map> buttonsFilter = [
    {"cuisines": 'American', "isActive": false},
    {"cuisines": 'Asia', "isActive": false},
    {"cuisines": 'Sushi', "isActive": false},
    {"cuisines": 'Pizza', "isActive": false},
    {"cuisines": 'Dessert', "isActive": false},
    {"cuisines": 'FastFood', "isActive": false},
    {"cuisines": 'Vietnamese', "isActive": false},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // //mainAxisExtent: -10,
          mainAxisSpacing: 0.1,
          crossAxisSpacing: 0.1,
          childAspectRatio: 0.5,
        ),
        itemCount: buttonsFilter.length,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () => {
              setState(() => (buttonsFilter.elementAt(index)['isActive'] =
                  !buttonsFilter.elementAt(index)['isActive']))
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: !buttonsFilter.elementAt(index)['isActive']
                          ? Theme.of(context).disabledColor
                          : Theme.of(context).colorScheme.onPrimary,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: headerTitle(
                      context,
                      buttonsFilter.elementAt(index)['cuisines'],
                      !buttonsFilter.elementAt(index)['isActive']
                          ? Theme.of(context).disabledColor
                          : Theme.of(context).colorScheme.onPrimary,
                      Theme.of(context).textTheme.titleSmall!,
                      FontWeight.normal)),
            ),
          );
        });
  }
}
