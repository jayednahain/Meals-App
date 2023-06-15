
import 'package:flutter/material.dart';
import 'package:mealsapp/Models/modelMeal.dart';
import 'package:mealsapp/Widgets/mealItemTrait.dart';
import 'package:transparent_image/transparent_image.dart';

//(#159)-1
class MealSingleItem extends StatelessWidget {

  const MealSingleItem({
    super.key,
    required this.meal
  });

  final Meal meal;

  //(#160)-3
  String get complexityText{
    return meal.complexity.name[0].toUpperCase() + meal.complexity.name.substring(1);
  }
  String get affordabilityText{
    return meal.affordability.name[0].toUpperCase() + meal.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(8) 
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: (){},
        child: Stack(
          children: [
            FadeInImage(
              placeholder:MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black87,
                padding: const EdgeInsets.symmetric(
                  vertical:6,
                  horizontal: 44
                ),
                child: Column(
                  children: [
                    //title
                    Text(
                      meal.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 10),
                    //meta data info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //(#160)-2
                        MealItemTrait(icon: Icons.schedule,label:"${meal.duration} min"),
                        SizedBox(width: 10),
                        MealItemTrait(icon:Icons.work,label:complexityText),
                        SizedBox(width: 10),
                        MealItemTrait(icon:Icons.attach_money,label:affordabilityText),

                      ],
                    )
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
