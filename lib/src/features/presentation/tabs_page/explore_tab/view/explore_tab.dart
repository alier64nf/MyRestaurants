import 'package:delivery_app/src/features/presentation/filter_page/view/filter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//_______Widgtes___Communs______
//import 'package:delivery_app/src/features/presentation/communs_widgets/rounded_Input.dart';
//________Widgets_____Own____Exploretab____

import 'package:delivery_app/src/features/presentation/communs_widgets/Cards/card_collection.dart';

import '../../../communs_widgets/Cards/card_horizontal.dart';
import '../../../communs_widgets/Cards/cardlist_vertical.dart';
import '../../../communs_widgets/Headers/header_actions.dart';
import '../../../communs_widgets/Headers/hedear_title.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ExploreTab createState() => _ExploreTab();
}

class _ExploreTab extends State<ExploreTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        //______Appbar____filter__ search
        SliverAppBar(
          //floating: true,
          pinned: true,
          //snap: true,
          //stretch: true,
          elevation: 0.5,
          backgroundColor: Colors.white,
          leadingWidth: double.maxFinite,
          leading: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  height: 50,
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'SearchView'),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search,
                              color: Theme.of(context).disabledColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: headerTitle(
                              context,
                              'Search',
                              Theme.of(context).disabledColor,
                              Theme.of(context).textTheme.labelLarge!,
                              FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Theme.of(context)
                          .buttonTheme
                          .colorScheme!
                          .onSecondary),
                  child: IconButton(
                      onPressed: () => {
                            showModalBottomSheet<void>(
                                elevation: 20,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                )),
                                constraints: BoxConstraints.loose(
                                    const Size.fromHeight(540)),
                                useSafeArea: true,
                                showDragHandle: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return const FilterView();
                                })
                          },
                      // Navigator.pushNamed(context, 'FilterView'),
                      icon: const Icon(
                        Icons.filter_list,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
              ],
            ),
          ),
        ),

        SliverList(
            delegate: SliverChildListDelegate([
          //_____________Title_________
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerLeft,
            child: headerTitle(context, " Discover new Places", null,
                Theme.of(context).textTheme.headlineSmall!, null),
          ),

          //__________Carrousel Horizontal___Places______
          SizedBox(
            height: 330,
            child: Swiper(
              //fade: 2.0,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return cardOnColumn(
                          context,
                          'assets/images/Industrial_restaurant.jpg',
                          "Andys's & Cindy diner",
                          'Calle 1era /24 y 26',
                          342,
                          'Delivery',
                          4.8,
                          null,
                          null);
                    });
              },
            ),
          ),
          //_____________________________________2second Elements Screen____________
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 7.0),
              child: headerAction(context, () => {}, " Popular this week",
                  'Show all', null, Icons.play_arrow)),
          //____________List Card en row___Popular this week__________
          SizedBox(
            height: 320,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: cardOnRow(
                    context,
                    'assets/images/Industrial_restaurant2.jpg',
                    "Analier's Delicious food",
                    'Calle 3era / 68 y 70',
                    234,
                    'Free Delivery',
                    5.0,
                    null,
                    null,
                    true),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: cardOnRow(
                    context,
                    'assets/images/Industrial_restaurant2.jpg',
                    "Analier's Delicious food",
                    'Calle 3era / 68 y 70',
                    234,
                    'Free Delivery',
                    5.0,
                    null,
                    null,
                    true),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: cardOnRow(
                    context,
                    'assets/images/Industrial_restaurant2.jpg',
                    "Analier's Delicious food",
                    'Calle 3era / 68 y 70',
                    234,
                    'Free Delivery',
                    5.0,
                    null,
                    null,
                    true),
              ),
            ]),
          ),
          //_____Carrousel Card Collections_________

          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: headerAction(
                context,
                () => Navigator.pushNamed(context, 'CollectionsPage'),
                "Collections",
                'Show all',
                null,
                Icons.play_arrow),
          ),

          SizedBox(
            height: 200,
            child: Swiper(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () => {},
                          child: cardCollection(context, false));
                    });
              },
            ),
          ),
        ])),
      ],
    ));
  }
}
