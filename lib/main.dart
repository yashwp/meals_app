import 'package:flutter/material.dart';

import './screens/categories_screen.dart';
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
      home: CategoriesScreen(),
      routes: {
        '/category-meals': (ctx) => CategoryMealsScreen()
      },
    );
  }
}
