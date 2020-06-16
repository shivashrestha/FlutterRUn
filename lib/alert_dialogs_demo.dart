import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(AlertDialogsDemo());

class AlertDialogsDemo extends StatelessWidget {
  final String Apptitle='Alert dialogs demo in flutter';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Apptitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Apptitle),
        ),
        body: MyAlert(),
      ),
    );
  }
}

class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          RaisedButton(
            child: Text('Show Alert'),
            onPressed: () {
              showAlertDialog(context);
            },
          ),
        ],
      ),
    );
  }
}
showAlertDialog(BuildContext context) {
  Widget okButoon=FlatButton(
    child: Text('OK'),
    onPressed: (){
      Navigator.of(context).pop();
    },
  );
  AlertDialog alert=AlertDialog(
    title: Text('Basic alert'),
    content: Text('This is alert message'),
    actions: [
      okButoon,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context){
      return alert;
    },
  );
}

