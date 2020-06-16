import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MultipleWidgets());

class MultipleWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Widgets demo',
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Multiple widgets demo'),
      ),
    body: Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.red,
              height: 500.0,
                width: 300.0,
            ),
            Container(
              color: Colors.green,
              height: 300,
              width: 100,
            ),
            Container(
              color: Colors.yellow,
              height: 100,
              width: 50,
            ),
          ],
        ),

      ),
    ),
    );
  }
}
