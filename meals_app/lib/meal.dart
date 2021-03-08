// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:meals_app/category_item.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String title;
  final String imageUrl;
  final List<String> categories;
  final String id;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final Affordability affordability;
  final int duration;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal({
    this.isGlutenFree,
    this.isVegan,
    this.isVegetarian,
    this.isLactoseFree,
    this.duration,
    this.title,
    this.imageUrl,
    this.id,
    this.affordability,
    this.categories,
    this.complexity,
    this.ingredients,
    this.steps,
  });
}
