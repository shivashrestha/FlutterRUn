import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(ImageDemo());
class ImageDemo extends StatelessWidget {
  final String appTitle='Flutter image demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:appTitle ,
      home: Scaffold(
        appBar: AppBar(
          title:Text(appTitle),
        ),
        body: Column(
          children: <Widget>[
            FadeInImage.assetNetwork(
                placeholder: 'assets/images/panda.jpg',
               // placeholder: kTransparentImage,
                image: 'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png',
              height: 400.0,
              width: 200.0,
            ),
            Text(
              'Images displayed from web url',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
