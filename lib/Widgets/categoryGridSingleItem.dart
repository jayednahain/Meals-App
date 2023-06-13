import 'package:flutter/material.dart';
import 'package:mealsapp/Models/modelCategory.dart';


// (#152)-3
class CategoryGridSingleItem extends StatelessWidget {
  final Category SingleCategoryItem;

  const CategoryGridSingleItem({
    required this.SingleCategoryItem
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration:BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  SingleCategoryItem.color.withOpacity(0.55),
                  SingleCategoryItem.color.withOpacity(0.9)
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight
            )
        ),
        child: Text(SingleCategoryItem.title,
          style:TextStyle(
            color: Colors.white70
          )
        ),
      ),
    );
  }
}
