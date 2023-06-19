import 'package:flutter/material.dart';
import 'package:mealsapp/Models/modelMeal.dart';
import 'package:mealsapp/Screen/mealsDetailsScreen.dart';
import 'package:mealsapp/Widgets/mealSingleItem.dart';

// (#155)-2
class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals
  });


  final String? title;
  final List<Meal> meals;

  void selectedMeal(BuildContext context, Meal meal){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx)=>MealDetailsScreen(singleMealItem: meal))
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx,index) =>
            // Text(meals[index].title)
            MealSingleItem(
                meal:meals[index],
                onSelectedMeal: (meals){
                  selectedMeal(context, meals);
                })
    );

    if(meals.isEmpty){
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Empty meals",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground
              ),
            ),
            Text(
              "Try Selecting some diffrent category",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              ),
            )

          ],
        ),
      );
    }

    //(#163)-3
    if (title == null){
      return content;
    }

    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: content ,
    );
  }
}
