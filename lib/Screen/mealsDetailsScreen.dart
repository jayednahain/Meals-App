import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealsapp/Models/modelMeal.dart';

class MealDetailsScreen extends StatelessWidget {
   const MealDetailsScreen({Key? key, required this.singleMealItem}) : super(key: key);

   final Meal singleMealItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(singleMealItem.title),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                singleMealItem.imageUrl,
                width:double.infinity,
                height: 300,
                fit:BoxFit.cover
            ),
            const SizedBox(height: 14),
            Text(
              "Ingredients",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 14),
            for (final ingredient in singleMealItem.ingredients)
            Text(
                ingredient,
                style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
                ),
            ),
            const SizedBox(height: 24),
            Text(
              "Steps",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 24),
            for (final steps in singleMealItem.steps)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8
                ),
                child: Text(
                  steps,
                  textAlign: TextAlign.center,
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground
                  ),
                ),
              ),

          ],
        ),
      )
    );
  }
}
