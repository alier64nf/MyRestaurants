import 'package:delivery_app/src/features/presentation/communs_widgets/Alerts/alert_dialog.dart';
import 'package:delivery_app/src/features/presentation/tabs_page/explore_tab/view/explore_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs_page/favorite_tab/view/favorite_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs_page/my_order_tab/view/my_order_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs_page/profile_tab/view/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      alertDialog(
          context,
          () => print('Habilitar localizacion'),
          'Enabled your location',
          "Please allow to use your location to show nearby restaurant on the map",
          FontAwesomeIcons.locationPin,
          'Enabled Location',
          null);
    });
  }

  List<Widget> tabsList = [
    const ExploreTab(),
    const MyorderTab(),
    const FavoriteTab(),
    const ProfileTab(),
  ];
  int selectIndex = 0;

  void toggleTabs(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabsList.elementAt(selectIndex),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 20.0,
          unselectedItemColor: Theme.of(context).disabledColor,
          selectedLabelStyle: Theme.of(context).textTheme.labelLarge,
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(
                  color: Theme.of(context).disabledColor, letterSpacing: 1.5),
          currentIndex: selectIndex,
          onTap: toggleTabs,
          showUnselectedLabels: true,
          selectedItemColor:
              Theme.of(context).buttonTheme.colorScheme!.onSecondary,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_rounded), label: 'My order'),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_3_sharp), label: 'Profile'),
          ]),
    );
  }
}
