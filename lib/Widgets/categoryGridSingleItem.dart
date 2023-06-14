import 'package:flutter/material.dart';
import 'package:mealsapp/Models/modelCategory.dart';


// (#152)-3
class CategoryGridSingleItem extends StatelessWidget {
  final Category SingleCategoryItem;
  final void Function() onSelectCategory;

  const CategoryGridSingleItem({
    required this.SingleCategoryItem,
    required this.onSelectCategory
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onSelectCategory();
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius:BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(16),
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
            color: Colors.white70,
            fontSize: 15
          )
        ),
      ),
    );
  }
}
