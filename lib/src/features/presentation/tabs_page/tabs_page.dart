import 'package:delivery_app/src/features/presentation/tabs_page/explore_tab/view/explore_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs_page/favorite_tab/view/favorite_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs_page/my_order_tab/view/my_order_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs_page/profile_tab/view/profile_tab.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabsList.elementAt(selectIndex),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 20.0,
          unselectedItemColor: Theme.of(context).disabledColor,
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
