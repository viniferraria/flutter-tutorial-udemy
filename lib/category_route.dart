import 'package:flutter/material.dart';
import 'package:tutorial_udemy/category.dart';
// import 'package:flutter/cupertino.dart';

final _backgroundColor = Colors.green[100];

class CategoryRoute extends StatelessWidget{
  const CategoryRoute();
  
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  
  ];

  static const _icons = <IconData>[
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_alarms,
    Icons.access_time,
    Icons.accessibility,
    Icons.account_balance,
    Icons.dashboard,
    Icons.query_builder,
    
  ];

  Widget _buildCategoryWidget(List<Widget> categories){
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];
  
    for (var i = 0; i < _categoryNames.length; i++){
      categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconlocation: _icons[i],
      ));
    }

    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidget(categories),  
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

  return Scaffold(
    appBar: appBar,
    body: listView,
    );
  }
}