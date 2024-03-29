import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealsapp/Screen/categoriesScreen.dart';
import 'package:mealsapp/Screen/mealsScreen.dart';
import 'package:mealsapp/Screen/tabScreen.dart';

void main() {
  runApp(MyApp());
}


final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.yellow,
      brightness: Brightness.dark,
    ),
    textTheme:GoogleFonts.latoTextTheme()
);


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:theme,
        home: TabScreen()
      // home: CategoriesScreen()
    );
  }
}
