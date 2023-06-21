import 'package:flutter/material.dart';
import 'package:mealsapp/Data/dummyData.dart';
import 'package:mealsapp/Models/modelCategory.dart';
import 'package:mealsapp/Widgets/categoryGridSingleItem.dart';
import 'package:mealsapp/Screen/mealsScreen.dart';

import '../Models/modelMeal.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key,
    required this.onToggleFavorite,
    required this.availableMeals
  });

  //(#173)-5
  final List<Meal> availableMeals;

  final void Function(Meal meal) onToggleFavorite;
  //(#157)-1
  void _selectCategory(BuildContext context , Category category){
    final filteredMeals = availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx)=>MealsScreen(
        title: category.title,
        meals: filteredMeals,
        onToggleFavorite: onToggleFavorite,
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      // (#151)
     GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final catrogry in availableCategories)
            CategoryGridSingleItem(
                SingleCategoryItem:catrogry,
                onSelectCategory: (){
                  _selectCategory(context,catrogry);
                }
            )
        ],
      );

  }
}
