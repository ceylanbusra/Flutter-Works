import 'package:flutter/material.dart';
import 'package:meals_app/categories.dart';
import 'package:meals_app/drawer.dart';
import 'package:meals_app/favorite_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  // ignore: unused_element
// ignore: unused_field
  List _selectedpage = [Categories(), FavoriteScreen()];
// ignore: unused_element
// ignore: unused_field
  int _selectedPageIndex = 0;
// ignore: unused_element
  void selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nam Nam Nam Nam"),
      ),
      drawer: MainDrawer(),
      body: _selectedpage[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: selectPage,
        selectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).primaryColor,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              // ignore: deprecated_member_use
              title: Text('Categories')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              // ignore: deprecated_member_use
              title: Text('favroite')),
        ],
      ),
    );
  }
}
