import 'package:coffee_shop/src/core/constants/app_color.dart';
import 'package:coffee_shop/src/core/theme/theme_text.dart';
import 'package:coffee_shop/src/screens/favourite_screen/favourite_screen.dart';
import 'package:coffee_shop/src/screens/home_screen/home_screen.dart';
import 'package:coffee_shop/src/screens/order_screen/order_screen.dart';
import 'package:coffee_shop/src/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: ThemeText.getTextTheme(),
      ),
      home: CoffeeApp(),
    );
  }
}

class CoffeeApp extends StatefulWidget {
  @override
  _CoffeeAppState createState() => _CoffeeAppState();
}

class _CoffeeAppState extends State<CoffeeApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = <Widget>[
    HomeScreen(),
    OrderScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  final List<BottomNavigationBarItem> navigationBarItems =
      <BottomNavigationBarItem>[
    new BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    new BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.coffee), label: 'Orders'),
    new BottomNavigationBarItem(
        icon: Icon(Icons.favorite), label: 'Favourites'),
    new BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          elevation: 1,
          items: navigationBarItems,
          onTap: _onTabTapped,
          unselectedLabelStyle: TextStyle(color: AppColor.lightGrey),
          showSelectedLabels: true,
          selectedItemColor: AppColor.darkGrey,
          unselectedItemColor: AppColor.lightGrey,
          selectedLabelStyle: TextStyle(
            color: AppColor.darkGrey,
          ),
          selectedIconTheme: IconThemeData(
            color: AppColor.darkGrey,
          ),
          unselectedIconTheme: IconThemeData(color: AppColor.lightGrey)),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
