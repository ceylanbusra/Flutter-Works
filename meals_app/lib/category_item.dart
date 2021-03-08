// ignore: avoid_web_libraries_in_flutter
// ignore: unused_import
//import 'dart:js';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:meals_app/category_meal.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;
  CategoryItem({this.id, this.title, this.color});

  void selected(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMeal.routeName,
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => selected(context),
        borderRadius: BorderRadius.circular(15),
        splashColor: Theme.of(context).primaryColor,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [color.withOpacity(0.7), color])),
          padding: const EdgeInsets.all(15),
          child: Text(title),
        ),
      ),
    );
  }
}
