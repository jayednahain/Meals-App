import 'package:flutter/material.dart';
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  var _glutenFreeFilterSet = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("You Filter item"),
      ),
      body: Column(
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
          )
        ],
      ),
    );
  }
}
