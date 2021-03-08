import 'package:flutter/material.dart';
import 'package:meals_app/category_item.dart';

import 'dummycategory_data.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 20,
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 2),
      children: DUMMY_CATEGORIES
          .map((context) => CategoryItem(
                title: context.title,
                color: context.color,
                id: context.id,
              ))
          .toList(),
    );
  }
}
