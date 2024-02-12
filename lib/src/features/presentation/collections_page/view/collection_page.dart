import 'package:delivery_app/src/features/presentation/communs_widgets/Headers/hedear_title.dart';
import 'package:flutter/material.dart';

import '../../communs_widgets/Cards/card_collection.dart';

//_______Widgets Communs__________

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onBackground,
          flexibleSpace: Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: headerTitle(context, 'Collections', null,
                  Theme.of(context).textTheme.headlineSmall!, null),
            ),
          ),
          iconTheme: Theme.of(context).iconTheme,
        ),
        body: CustomScrollView(slivers: [
          SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.74, crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () => {
                            Navigator.pushNamed(
                                context, 'CollectionDetailsPage')
                          },
                      child: cardCollection(context, true)),
                );
              })
        ]));
  }
}
