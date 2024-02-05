import 'package:delivery_app/src/features/presentation/communs_widgets/Headers/hedear_title.dart';
import 'package:flutter/material.dart';

import '../../communs_widgets/Cards/card_collection.dart';
import '../../communs_widgets/Cards/card_elevated.dart';
import '../../communs_widgets/Cards/cardlist_vertical.dart';

//_______Widgets Communs__________

class CollectionDetailsPage extends StatelessWidget {
  CollectionDetailsPage({super.key});

  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar.large(
        floating: true,
        pinned: false,
        snap: true,
        expandedHeight: 250,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Stack(
          children: [
            const ClipRRect(
              child: Image(
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/china_food.jpg'),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  headerTitle(
                      context,
                      'Asia',
                      Theme.of(context).colorScheme.onBackground,
                      Theme.of(context).textTheme.headlineMedium!,
                      null),
                  headerTitle(
                      context,
                      'Restaurant',
                      Theme.of(context).colorScheme.onBackground,
                      Theme.of(context).textTheme.headlineMedium!,
                      null),
                ],
              ),
            ),
          ],
        ),
      ),
      SliverList.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.onBackground,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).disabledColor.withOpacity(0.4),
                      offset: Offset(0, 5),
                      // blurStyle: BlurStyle.solid,
                      blurRadius: 10,
                    )
                  ]),
              child: CardElevatedWid(
                  pathImage: 'assets/images/Industrial_restaurant2.jpg',
                  title: "Analier's Delicious food",
                  address: 'Calle 3era / 68 y 70',
                  ratings: 234,
                  labelButton: 'Free Delivery',
                  level: 5.0,
                  hasbutton: true),
            );
          })
    ]));
  }
}
