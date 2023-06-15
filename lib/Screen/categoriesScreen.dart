import 'package:flutter/material.dart';
import 'package:mealsapp/Data/dummyData.dart';
import 'package:mealsapp/Models/modelCategory.dart';
import 'package:mealsapp/Widgets/categoryGridSingleItem.dart';
import 'package:mealsapp/Screen/mealsScreen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  //(#157)-1
  void _selectCategory(BuildContext context , Category category){
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx)=>MealsScreen(
          title: category.title,
          meals: filteredMeals
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick Category"),
      ),
      // (#151)
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
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
      ),
    );
  }
}