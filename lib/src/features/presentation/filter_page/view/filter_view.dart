import 'dart:ui';
import 'package:delivery_app/src/features/presentation/filter_page/view/custom_widgets/cuisines_widg.dart';

import 'package:delivery_app/src/features/presentation/filter_page/view/custom_widgets/list_tiles-selected.dart';
import 'package:delivery_app/src/features/presentation/filter_page/view/custom_widgets/price_filter.dart';
import 'package:flutter/material.dart';

//_______Widgets Communs__________

import '../../communs_widgets/Headers/hedear_title.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<StatefulWidget> createState() => _FilterView();
}

class _FilterView extends State<FilterView> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0),
          child: Container(color: Colors.transparent)),
      SafeArea(
          child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          _appBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              //_______CUISINES___TITLE
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: headerTitle(
                    context,
                    'Cuisines'.toUpperCase(),
                    Theme.of(context).disabledColor,
                    Theme.of(context).textTheme.titleMedium!,
                    null),
              ),
              _cuisinesFilter(),
              //________SortBy_____TITILE______
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: headerTitle(
                    context,
                    'Sort By'.toUpperCase(),
                    Theme.of(context).disabledColor,
                    Theme.of(context).textTheme.titleMedium!,
                    null),
              ),

              _sortByFilter(),

              //________OthersFilter_____TITILE______
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: headerTitle(
                    context,
                    'Filter'.toUpperCase(),
                    Theme.of(context).disabledColor,
                    Theme.of(context).textTheme.titleMedium!,
                    null),
              ),
              _othersFilter(),
              //________PriceFilter_____TITILE______
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: headerTitle(
                    context,
                    'Price'.toUpperCase(),
                    Theme.of(context).disabledColor,
                    Theme.of(context).textTheme.titleMedium!,
                    null),
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                  margin: const EdgeInsets.only(bottom: 18),
                  child: const PriceFilterRSlider()),
            ]),
          ),
        ],
      )),
    ]);
  }

  Widget _appBar() {
    return SliverAppBar(
      pinned: true,
      leadingWidth: 90,
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      elevation: 0.5,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
            child: GestureDetector(
          onTap: () => {
            // _animationController.animateBack(2),
          },
          child: headerTitle(context, 'Reset', null,
              Theme.of(context).textTheme.titleSmall!, FontWeight.normal),
        )),
      ),
      title: Center(
          child: headerTitle(context, 'Filters', null,
              Theme.of(context).textTheme.titleMedium!, null)),
      actions: [
        GestureDetector(
          onTap: () => {
            Navigator.pop(context),
            //_animationController.dispose()
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
                child: headerTitle(
                    context,
                    'Done',
                    Theme.of(context).colorScheme.onPrimary,
                    Theme.of(context).textTheme.titleSmall!,
                    FontWeight.normal)),
          ),
        ),
      ],
    );
  }

//________CUISINES____WIDGET__
  Widget _cuisinesFilter() {
    return
        //________CUISINES____WIDGET__
        Container(
      padding: const EdgeInsets.only(top: 0, bottom: 30, right: 5, left: 5),
      width: double.infinity,
      height: 150,
      child: const Cuisines(),
    );
  }

//_____SortBy____Widget______
  Widget _sortByFilter() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: ListTilesSelectd(
            texto: 'Top Rated',
            isActive: false,
          ),
        ),
        const Divider(
          height: 0.1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: ListTilesSelectd(
            texto: 'Nearest me',
            isActive: false,
          ),
        ),
        const Divider(
          height: 0.1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: ListTilesSelectd(
            texto: 'Cost High to Low',
            isActive: false,
          ),
        ),
        const Divider(
          height: 0.1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: ListTilesSelectd(
            texto: 'Cost Low to High',
            isActive: false,
          ),
        ),
        const Divider(
          height: 0.1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: ListTilesSelectd(
            texto: 'Most Popular',
            isActive: false,
          ),
        ),
      ],
    );
  }

//_____Filter____Widget______
  Widget _othersFilter() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: ListTilesSelectd(
            texto: 'Open Now',
            isActive: false,
          ),
        ),
        const Divider(
          height: 0.1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: ListTilesSelectd(
            texto: 'Card Credit',
            isActive: false,
          ),
        ),
        const Divider(
          height: 0.1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: ListTilesSelectd(
            texto: 'Alcohol Served',
            isActive: false,
          ),
        ),
      ],
    );
  }
}
