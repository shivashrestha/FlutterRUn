import 'package:flutter/material.dart';
import 'package:fluttertutorial/simple_widgets.dart';

void main() {
  Simple_Widgets simple_widgets=new Simple_Widgets();
  runApp(
      HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlatButton(
        child: Scaffold(
            body: Center(
              child: FlatButton(
                color: Colors.green,
                child: Text(
                    'This from flutter demo',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Colors.red,
                  ),
                ),
                onPressed: (){},
              ),
          ),
          ),
        ),
    );
  }
}

