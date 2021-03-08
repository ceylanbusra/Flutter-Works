import 'package:flutter/material.dart';
import 'package:meals_app/duummy_data.dart';
// ignore: unused_import
import 'package:meals_app/meal_item.dart';

class MealDetail extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    // ignore: unused_local_variable
    final mealId = routeArgs['id'];

    // ignore: unused_local_variable
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 250,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                )),
            Container(
                child: Text(
              "Ingredients",
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
            SizedBox(height: 5),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: ListView.builder(
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      elevation: 3,
                      color: Theme.of(context).accentColor,
                      child: Text(
                        selectedMeal.ingredients[index],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ));
                },
              ),
            ),
            Container(
                child: Text(
              "Steps",
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
            SizedBox(height: 5),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      elevation: 3,
                      color: Theme.of(context).accentColor,
                      child: Text(
                        selectedMeal.steps[index],
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
