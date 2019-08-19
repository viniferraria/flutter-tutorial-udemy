import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hello Rectangle')
//           ),
          body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 1080,
        width: 1000,
        child: Center(
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 80.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
