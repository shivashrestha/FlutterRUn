import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Multiple gesture demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Multiple Gesture Example'),
          backgroundColor: Colors.redAccent,
        ),
        body: DemoApp(),
      ),
    )
  );
}
class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawGestureDetector(
      gestures: {
        AllowMultipleGestureRecognizer:GestureRecognizerFactoryWithHandlers<
    AllowMultipleGestureRecognizer>(
            ()=>AllowMultipleGestureRecognizer(),
            (AllowMultipleGestureRecognizer instance){
              instance.onTap=()=>print('it is a parent gesture');
            }
        ),
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        color: Colors.blue,
        child: Center(
          child: RawGestureDetector(
            gestures:{
              AllowMultipleGestureRecognizer:GestureRecognizerFactoryWithHandlers<
              AllowMultipleGestureRecognizer>(
                ()=>AllowMultipleGestureRecognizer(),(AllowMultipleGestureRecognizer instance){
                  instance.onTap=()=>print('it is nested container');
                }
              )
            },
            child: Container(
              color: Colors.deepOrange,
              width: 250.0,
                height: 300.0,
            ),
          ),
        ),
      ),

    );
  }
}
class AllowMultipleGestureRecognizer extends TapGestureRecognizer {
  @override
 void rejectGesture(int pointer){
    acceptGesture(pointer);
  }
}

