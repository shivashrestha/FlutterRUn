import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complex UI Widget',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: MyHomePage1(title: 'Complex layout UI',),
    );
  }
}
class MyHomePage1 extends StatelessWidget {
  final String title;
  MyHomePage1({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text ('Complex layout UI',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
        ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(3.0,12.0,3.0,12.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Animal Category',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ProductBox(
              name: 'Apes',
              description:'These are apes',
              age:1,
              image:'apes.png',
            ),
            ProductBox(
              name: 'Deer',
              description:'These are deers',
              age:3,
              image:'deer.jpg',
            ),
            ProductBox(
              name: 'Panda',
              description:'These are panda',
              age:5,
              image:'panda.jpg',
            ),
            ProductBox(
              name: 'Racoon',
              description:'These are Racoons',
              age:2,
              image:'racoon.jpg',
            ),
            ProductBox(
              name: 'Wolf',
              description:'These are wolf',
              age:4,
              image:'wolf.jpg',
            ),
          ],
        ),
      ),

    );
  }
}

class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final int age;
  final String image;
  ProductBox({Key key, this.name,this.description,this.age,this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      height: 110.0,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/images/'+image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(2.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      this.description,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Age '+this.age.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


