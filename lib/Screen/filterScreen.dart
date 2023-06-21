import 'package:flutter/material.dart';


enum Filter{
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan
}

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {


  //(#170)
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilter = false;
  var _veganFilterSet = false;


  //(#171)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("You Filter item"),
      ),
      body: WillPopScope(
        //(#171)-2
      onWillPop: () async {
           Navigator.of(context).pop({
            Filter.glutenFree:_glutenFreeFilterSet,
            Filter.lactoseFree:_lactoseFreeFilterSet,
            Filter.vegetarian:_vegetarianFilter,
            Filter.vegan:_veganFilterSet
           });
           //(#171)-3
           return false;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _glutenFreeFilterSet,
              //newValue pass by flutter
              onChanged: (newValue){
                setState(() {
                  _glutenFreeFilterSet=newValue;
                });
              },
              title: Text("Gluten-free", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground
              )),
              subtitle:  Text("Gluten-free", style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              )),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 20,right: 20),
            ),
            //_lactoseFreeFilterSet
            SwitchListTile(
              value: _lactoseFreeFilterSet,
              //newValue pass by flutter
              onChanged: (newValue){
                setState(() {
                  _lactoseFreeFilterSet=newValue;
                });
              },
              title: Text("Lactose-Free", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              )),
              subtitle:  Text("Lactose-Free", style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              )),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 20,right: 20),
            ),
            //_vegetarianFilter
            SwitchListTile(
              value: _vegetarianFilter,
              //newValue pass by flutter
              onChanged: (newValue){
                setState(() {
                  _vegetarianFilter=newValue;
                });
              },
              title: Text("Vegetarian", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              )),
              subtitle:  Text("Vegetarian", style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              )),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 20,right: 20),
            ),
            //_veganFilterSet
            SwitchListTile(
              value: _veganFilterSet,
              //newValue pass by flutter
              onChanged: (newValue){
                setState(() {
                  _veganFilterSet=newValue;
                });
              },
              title: Text("Vegan", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              )),
              subtitle:  Text("Vegan", style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              )),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 20,right: 20),
            ),

          ],
        ),
      ),
    );
  }
}
