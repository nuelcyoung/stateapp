import 'package:flutter/material.dart';
import 'package:stateapp/widgets/favorite_widget.dart';
import 'package:stateapp/widgets/home_widget.dart';
import 'package:stateapp/widgets/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _appBarOption = [
    Text("Home"),
    Text("Favorite"),
    Text("Profile"),
  ];
  static const List _widgetOption = <Widget>[
    HomeWidget(),
    FavoriteWidget(),
    ProfileWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarOption[_selectedIndex],
      ),
      body: _widgetOption[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: ((value) {
            setState(() {
              _selectedIndex = value;
            });
          }),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ]),
    );
  }
}
