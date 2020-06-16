import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var lists = List<String>.generate(10, (index) => "List: $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Test Demo'),
      ),
      body: ListView.builder(
        itemCount: lists.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lists[index]),
            trailing: Container(
              width: 60,
              child: FlatButton(
                child: Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
                onPressed: () {
                  showSnackBar(context, index);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  void showSnackBar(BuildContext context, int index) {
    var deleteRecord = lists[index];
    setState(() {
      lists.removeAt(index);
    });

    SnackBar snackbar=SnackBar(
      content: Text('Delete list items is $deleteRecord'),
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: (){
          setState(() {
            lists.insert(index, deleteRecord);
          });
        },
      ),

    );
    Scaffold.of(context).showSnackBar(snackbar);
  }
}

