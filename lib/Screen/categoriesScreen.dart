import 'package:flutter/material.dart';
import 'package:mealsapp/Data/dummyData.dart';
import 'package:mealsapp/Widgets/categoryGridSingleItem.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick Category"),
      ),
      // (#151)
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final catrogry in availableCategories)
            CategoryGridSingleItem(SingleCategoryItem:catrogry)
        ],
      ),
    );
  }
}
