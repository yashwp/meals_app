import 'package:flutter/material.dart';


import './screens/filters_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/tabs_screen.dart';
import './screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: TabsScreen(),
      routes: {
        '/category-meals': (ctx) => CategoryMealsScreen(),
        '/meal-detail': (ctx) => MealDetailScreen(),
        '/filters': (ctx) => FiltersScreen()
      }
    );
  }
}
