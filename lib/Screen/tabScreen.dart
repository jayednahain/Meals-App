import 'package:flutter/material.dart';
import 'package:mealsapp/Screen/categoriesScreen.dart';
import 'package:mealsapp/Screen/mealsScreen.dart';

import '../Models/modelMeal.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);


  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex =0;

  //(#163)-1
  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final List<Meal> _favoriteMeals = [];


  void _toggleMealFavoriteStatus(Meal meal){
    final isExisting = _favoriteMeals.contains(meal);
    if(isExisting){
      _favoriteMeals.remove(meal);
    }
    else{
      _favoriteMeals.add(meal);
    }
  }

  @override
  Widget build(BuildContext context) {

    //(#163)-2
    Widget activePage = CategoriesScreen(
      onToggleFavorite:_toggleMealFavoriteStatus ,
    );
    String activePageTitle ="Categories";
    if(_selectedPageIndex ==1){
      activePage = MealsScreen(meals: [],onToggleFavorite: _toggleMealFavoriteStatus,);
      activePageTitle ="Your Favorite Items";
    }

    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.set_meal),label: 'Categories'),
          BottomNavigationBarItem(icon:Icon(Icons.set_meal),label: 'Favorite')
        ],
      ),
    );
  }
}
