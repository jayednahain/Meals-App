import 'dart:ffi';

import 'package:flutter/material.dart';

class ShitchListTileCustom extends StatefulWidget {
  const ShitchListTileCustom({
    super.key,
    required this.title,
    required this.onSwitch,
    required this.switchValue
  });

  final switchValue;
  final String title;
  final Function onSwitch;

  @override
  State<ShitchListTileCustom> createState() => _ShitchListTileCustomState();
}

class _ShitchListTileCustomState extends State<ShitchListTileCustom> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: widget.switchValue,
      //newValue pass by flutter
      onChanged: (newValue){

      },
      title: Text("Gluten-free", style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onBackground
      )),
      subtitle:  Text("Gluten-free", style: Theme.of(context).textTheme.labelMedium!.copyWith(
          color: Theme.of(context).colorScheme.onBackground
      )),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 20,right: 20),
    );
  }
}
