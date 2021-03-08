import 'package:flutter/material.dart';
import 'package:meals_app/categories.dart';
import 'package:meals_app/category_meal.dart';
import 'package:meals_app/filters_screen.dart';
import 'package:meals_app/meal_detail.dart';
import 'package:meals_app/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (ctx) => TabScreen(),
        CategoryMeal.routeName: (ctx) => CategoryMeal(),
        MealDetail.routeName: (ctx) => MealDetail(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      theme:
          ThemeData(accentColor: Colors.amber, primaryColor: Colors.deepPurple),
    );
  }
}

class MyhomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meals "),
      ),
      body: Center(
        child: Categories(),
      ),
    );
  }
}
