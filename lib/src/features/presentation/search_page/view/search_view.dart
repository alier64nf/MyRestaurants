import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../../communs_widgets/Cards/card_horizontal.dart';
import '../../communs_widgets/Cards/cardlist_vertical.dart';
import '../../communs_widgets/Headers/header_actions.dart';
import '../../communs_widgets/Headers/hedear_title.dart';

//_______Widgets Communs__________
class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<StatefulWidget> createState() => _SearchView();
}

class _SearchView extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Theme.of(context).colorScheme.onBackground,
            iconTheme: Theme.of(context).iconTheme,
            leading: GestureDetector(
              onTap: () => {Navigator.pop(context)},
              child: Icon(Icons.close),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              //_____fin del buscador
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 25),
                      alignment: Alignment.centerLeft,
                      child: headerTitle(context, 'Search', null,
                          Theme.of(context).textTheme.headlineMedium!, null),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: -10.0),
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Icon(Icons.search,
                                color: Theme.of(context).disabledColor),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Row(
                            children: [
                              headerTitle(
                                  context,
                                  'Search',
                                  Theme.of(context).disabledColor,
                                  Theme.of(context).textTheme.labelLarge!,
                                  FontWeight.normal)
                            ],
                          ),
                          constraints:
                              BoxConstraints.tight(const Size.fromHeight(40)),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: headerAction(context, () => {}, "Recent search",
                    'Clear all', Theme.of(context).colorScheme.onPrimary, null),
              ),
              SizedBox(
                height: 200,
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
                              null,
                              null,
                              null,
                              200,
                              150);
                        });
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: headerAction(context, () => {}, "Recommend for you", ' ',
                    Theme.of(context).colorScheme.onPrimary, null),
              ),
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
                        null,
                        5.0,
                        null,
                        null,
                        false),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: cardOnRow(
                        context,
                        'assets/images/Industrial_restaurant2.jpg',
                        "Analier's Delicious food",
                        'Calle 3era / 68 y 70',
                        234,
                        null,
                        5.0,
                        null,
                        null,
                        false),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: cardOnRow(
                        context,
                        'assets/images/Industrial_restaurant2.jpg',
                        "Analier's Delicious food",
                        'Calle 3era / 68 y 70',
                        234,
                        null,
                        5.0,
                        null,
                        null,
                        false),
                  ),
                ]),
              ),
            ]),
          )
        ],
      )),
    );
  }
}
