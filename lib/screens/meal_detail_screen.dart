import 'package:flutter/material.dart';

import 'package:meals_app/original.dart';

class MealDetailScreen extends StatelessWidget {
  Widget buildSectionTitle(BuildContext c, String text) {
    return Container(
      margin: EdgeInsets.only(top: 24, bottom: 16),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget builderContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[200]),
      ),
      width: 350,
      height: 200,
      padding: EdgeInsets.all(16),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final meal = DUMMY_MEALS.firstWhere((m) => m.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text('${meal.title}')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Ingredients'),
            builderContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Colors.orangeAccent[50],
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(meal.ingredients[index]),
                  ),
                ),
                itemCount: meal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'Steps'),
            builderContainer(
              ListView.builder(
                itemBuilder: (ctx, idx) => ListTile(
                  leading: CircleAvatar(
                    child: Text('# ${idx + 1}'),
                  ),
                  title: Text(meal.steps[idx]),
                ),
                itemCount: meal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
