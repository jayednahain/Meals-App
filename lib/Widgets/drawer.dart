
import 'package:flutter/material.dart';
import 'package:mealsapp/Widgets/singleDrawerItem.dart';
//(#166)-1
class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.yellow,
                  Colors.red.withOpacity(0.8)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Colors.red,
                ),
                const SizedBox( width: 18),
                Text('Cooking Up!', style: TextStyle(color: Colors.white))
              ],
            )
          ),
          SingleDrawerItem(
              itemIcon: Icons.restaurant,
              title: 'Meals',
              onTapItem: (){
                print("___PRESS___!");
              }
          ),
          SingleDrawerItem(
              itemIcon: Icons.settings,
              title: 'Filter',
              onTapItem: (){}
          ),
        ],
      ),
    );
  }
}
