import 'package:flutter/material.dart';
import 'category.dart';
import 'package:flutter/cupertino.dart';
import 'category_route.dart';
void main() {
  runApp(UnitConverterApp());
}

var routes = <CategoryRoute>[
  CategoryRoute(),
];

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit converter',

      home: routes[0],
    );
  }
}