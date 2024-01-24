import 'package:delivery_app/src/features/presentation/tabs_page/explore_tab/view/widgets/card_collection.dart';
import 'package:delivery_app/src/features/presentation/communs_widgets/header_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//_______Widgtes___Communs______
import 'package:delivery_app/src/features/presentation/communs_widgets/hedear_title.dart';
//import 'package:delivery_app/src/features/presentation/communs_widgets/rounded_Input.dart';
//________Widgets_____Own____Exploretab____
import 'package:delivery_app/src/features/presentation/tabs_page/explore_tab/view/widgets/card_places.dart';
import 'package:delivery_app/src/features/presentation/tabs_page/explore_tab/view/widgets/card_popular_weeks.dart';

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
          elevation: 5,
          backgroundColor: Colors.white,
          leadingWidth: double.maxFinite,
          leading: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  height: 40,
                  child: TextField(
                      onTap: () => {},
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide.none,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Row(
                            children: [
                              IconButton(
                                  onPressed: () => {},
                                  icon: const Icon(Icons.search),
                                  color: Theme.of(context).disabledColor),
                              headerTitle(
                                  context,
                                  'Search',
                                  Theme.of(context).disabledColor,
                                  Theme.of(context).textTheme.labelLarge!,
                                  FontWeight.normal),
                            ],
                          ))),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Theme.of(context)
                          .buttonTheme
                          .colorScheme!
                          .onSecondary),
                  child: IconButton(
                      onPressed: () => {},
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
                      return cardOnColumn(context);
                    });
              },
            ),
          ),
          //_____________________________________2second Elements Screen____________
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: headerAction(context, " Popular this week", 'Show all')),
          //____________List Card en row___Popular this week__________
          SizedBox(
            height: 350,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: cardOnRow(context),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: cardOnRow(context),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: cardOnRow(context),
              ),
            ]),
          ),
          //_____Carrousel Card Collections_________

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: headerAction(context, "Collections", 'Show all'),
          ),
          SizedBox(
            height: 200,
            child: Swiper(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return cardCollection(context);
                    });
              },
            ),
          ),
        ])),
      ],
    ));
  }
}
