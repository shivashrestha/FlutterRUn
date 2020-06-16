import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SingleChild());

class SingleChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single child widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Single child widget test',
        ),
      ),
      body: Container(
        height: 600,
        width: 100,
        child: Center(
          child: FittedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  height: 300.0,
                  width: 100.0,
                  child: Image.asset('assets/images/apes.png'),
                ),
                Container(
                  child: Text('this is Apes'),
                )
              ],
            ),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}