import 'package:flutter/material.dart';
import 'package:week6/core/managers/assets_manager/assets_manager.dart';
import 'package:week6/models/bottom_bar_model.dart';
import 'package:week6/screens/discover_screen/discover_screen.dart';
import 'package:week6/screens/favorite_screen/favorite_screen.dart';
import 'package:week6/screens/profile_screen/profile_screen.dart';
import 'package:week6/screens/restaurants_screen/restaurants_screen.dart';
import 'package:week6/screens/search_screen/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget>screens=[
    const DiscoverScreen(),
    const RestaurantScreen(),
     SearchScreen(),
    const FavoriteScreen(),
    const ProfileScreen()
  ];
  List<BottomBarModel>items=[
    BottomBarModel(AssetManager.discovericon, 'Discover'),
    BottomBarModel(AssetManager.restaurantsicon, 'Restaurants'),
    BottomBarModel(AssetManager.searchicon, 'Search'),
    BottomBarModel(AssetManager.favoriteicon, 'Favorite'),
    BottomBarModel(AssetManager.profileicon, 'Profile'),
          
  ];
  int _currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: const IconThemeData(
            size: 40,
            color: Colors.red,
          ),
          selectedIconTheme: const IconThemeData(
            size: 40,
            color: Colors.black,
          ),
          currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
              _currentIndex=index;
            });
          },
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          items: items
              .map((e) =>
              BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage(e.icon),
                    color: _currentIndex == items.indexOf(e) ?
                    Colors.red :
                    Colors.black,
                    width: 30,
                  ),
                  label: e.label))
              .toList()),
          ),
      );
  }
}