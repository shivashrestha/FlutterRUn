import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey
      ),
      home: FirstPage(),
    ),
  );
}
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Navigator page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('First Page'),
          color: Colors.greenAccent,
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>SecondPage()),
            );
          },
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page navigator'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}

