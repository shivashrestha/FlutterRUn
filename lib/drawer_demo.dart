import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  final String apptitle='Flutter drawer demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: apptitle,
      home: MyHomePage(title:apptitle),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key,this.title}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text (title),
      ),
      body: Center(
        child: Text(
          'Drawer at the top left of the application',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Shiva Shrestha'),
              accountEmail: Text('shiva@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  'A',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contacts'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Info'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

