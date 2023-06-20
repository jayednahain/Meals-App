import 'package:flutter/material.dart';
import 'package:mealsapp/Screen/categoriesScreen.dart';
import 'package:mealsapp/Screen/mealsScreen.dart';
import 'package:mealsapp/Widgets/drawer.dart';

import '../Models/modelMeal.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);


  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex =0;
  
  void _showInfoMessage(String message){
    //accessing globally avalable context
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

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
      //(#165)-1
      setState(() {
        _favoriteMeals.remove(meal);
      });
      _showInfoMessage("Meal remove from favorite");
    }
    else{
      //(#165)-1
      setState(() {
        _favoriteMeals.add(meal);
        _showInfoMessage("Meal added to favorite");
      });
    }
  }

  //(#167)-1
  void _setScreen(String identifier){
    if(identifier=='filters'){}
    else {
      Navigator.of(context).pop();
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
      activePage = MealsScreen(
        meals: _favoriteMeals,
        onToggleFavorite: _toggleMealFavoriteStatus
      );
      activePageTitle ="Your Favorite Items";
    }

    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      body: activePage,
      drawer: MainDrawer(onSelectScreen: _setScreen,),
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
