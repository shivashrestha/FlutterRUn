import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle='flutter form demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter form demo'),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

//creating Form Widgets
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() => MyCustomFormState();
}

//holds data related form
class MyCustomFormState extends State<MyCustomForm> {
  //create a global key that uniquely identifies the form widgets
  //allows validation of the  form
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name'
            ),
            validator: (value){
              if(value.isNotEmpty){
                return 'please enter your name';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'Enter your Phone Number',
                labelText: 'PhoneNumber'
            ),
            validator: (value){
              String PhonePattern='[0-9]{10}';
              String phone=value;
              if(phone.toString().allMatches(PhonePattern).isEmpty){
                return 'please enter phone number';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.calendar_today),
                hintText: 'Enter your date of birth',
                labelText: 'Dob'
            ),
            validator: (value){
              if(value.isEmpty){
                return 'please enter date of birth';
              }
              return null;
            },
          ),
          Container(
            padding: EdgeInsets.only(left: 150.0,top: 30.0),
            child: RaisedButton(
              child: Text('Submit'),
                    onPressed: null,
            ),
          ),
        ],
      ),

    );
  }
}

