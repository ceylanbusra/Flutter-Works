import 'package:flutter/material.dart';
import 'package:meals_app/duummy_data.dart';
// ignore: unused_import
import 'package:meals_app/meal.dart';

// ignore: unused_import
import 'meal_item.dart';

// ignore: must_be_immutable
class CategoryMeal extends StatefulWidget {
  static const routeName = '/category-meals';

  @override
  _CategoryMealState createState() => _CategoryMealState();
}

class _CategoryMealState extends State<CategoryMeal> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    // ignore: unused_local_variable
    final categoryId = routeArgs['id'];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle + " Foods"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return MealItem(
            title: categoryMeals[index].title,
            id: categoryMeals[index].id,
            imageUrl: categoryMeals[index].imageUrl,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            duration: categoryMeals[index].duration,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
