import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first_screen.dart';
import 'second_screen.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            title: Text ('Flutter Appbar demo'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.short_text),text: 'Page 1'),
                Tab(icon: Icon(Icons.short_text),text: 'Page 2'),
                Tab(icon: Icon(Icons.short_text),text: 'Page 3'),
                Tab(icon: Icon(Icons.short_text),text: 'Page 4'),
                Tab(icon: Icon(Icons.short_text),text: 'Page 5'),
                Tab(icon: Icon(Icons.short_text),text: 'Page 6'),
                Tab(icon: Icon(Icons.short_text),text: 'Page 7'),
                Tab(icon: Icon(Icons.short_text),text: 'Page 8'),
                Tab(icon: Icon(Icons.short_text),text: 'Page 9'),
                Tab(icon: Icon(Icons.short_text),text: 'Page 10'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              FirstScreen(),
              SecondScreen(),
              FirstScreen(),
              SecondScreen(),
              FirstScreen(),
              SecondScreen(),
              FirstScreen(),
              SecondScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
