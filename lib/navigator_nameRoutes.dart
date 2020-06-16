import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertutorial/navigators_demo.dart';
void main(){
  runApp(
    MaterialApp(
    title: 'Navigator with name routes',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      //starts the app with / name routes
      initialRoute: '/',
      routes: {
      '/':(context)=>HomeScreen(),
        '/second':(context)=>SecondPage(),
      },
  ),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Home Page'),
          color: Colors.greenAccent,
          onPressed: (){
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}
