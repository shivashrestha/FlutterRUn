import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  final String appTitle='Hero Animation demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: MyHomePage(title: 'Hero Animation'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}):super(key: key);
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  Widget greenRect(){
    return Container(
      width: 75.0,
      height: 75.0,
      color: Colors.green,
    );
  }

  Widget detailPageRect(){
    return Container(
      width: 75.0,
      height: 75.0,
      color: Colors.brown,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BuildDemoWidget(),
    );
  }

  Widget BuildDemoWidget(){
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(
                tag: 'Hero rectangle',
                child: greenRect(),
              ),
              onTap: ()=>gotoDetailsPage(context),
            ),
            title: Text('Tap here to transform the rectangle'),
          ),
        ],
      ),
    );
  }

  void gotoDetailsPage(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx)=>Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'Hero-Rectangle',
                child: detailPageRect(),
              ),
              Text('This is a place where you can see details about the icon tapped at previous page.'),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
