import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}):super(key:key);
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Future<Post> post;

  void initState() {
    super.initState();
    post=fetchPost();
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API Demo ',
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter API Demo'),
        ),
        body: Center(
          child: FutureBuilder<Post>(
            future: post,
            builder: (context,abc){
              if(abc.hasData){
                return Text(abc.data.title);
              }else if(abc.hasError){
                return Text("${abc.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
Future<Post> fetchPost() async{
  final response=await http.get('https://jsonplaceholder.typicode.com/albums/1');
  if(response.statusCode==200){
    return Post.fromJson(json.decode(response.body));
  }else{
    throw Exception('Failed to load post');
  }
}
class Post{
final int userId;
final int id;
final String title;
final String description;
 Post({this.userId,this.id,this.title,this.description});
 factory Post.fromJson(Map<String, dynamic> json){
   return Post(
     userId: json['userId'],
     id: json['id'],
     title: json['title'],
     description: json['description'],
   );
 }
}