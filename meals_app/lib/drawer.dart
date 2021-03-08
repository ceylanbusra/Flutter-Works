import 'package:flutter/material.dart';
import 'package:meals_app/filters_screen.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  // ignore: unused_field
  static const routeName = '/DrawerScreen';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            alignment: Alignment.center,
            color: Theme.of(context).accentColor,
            child: Text(
              "What's Meal",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buildListTile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Settings', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }

  ListTile buildListTile(String title, IconData icon, Function tabHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 35,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 30),
      ),
      onTap: tabHandler,
    );
  }

  tabHandler() {}
}
