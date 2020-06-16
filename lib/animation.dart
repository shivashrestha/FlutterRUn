import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState(){
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 2500));
    animation=Tween<double>(begin: 0.0,end: 1.0).animate(animationController);
    animation.addListener(() {
      setState(() {
        print(animation.value.toString());
      });
    });
    animation.addStatusListener((status) {
      if(status==AnimationStatus.completed){
        animationController.reverse();
      }
      else if(status==AnimationStatus.dismissed){
        animationController.forward();
      }
      animationController.forward();
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter animation demo'),
      ),
      body: Center(
        child: AnimatedLogo(
          animation: animation,
        ),
      ),
    );
  }
}
class AnimatedLogo extends AnimatedWidget{
  final Tween<double>sizeAnimation=Tween<double>(begin: 0.0,end: 500.0);
  AnimatedLogo({Key key,Animation animation}):super(key:key,listenable:animation);
  Widget build(BuildContext context){
    final Animation<double>animation=listenable;
    return Transform.scale(
        scale: sizeAnimation.evaluate(animation),
        child: Text(
          'Hello animation'
        ),
    );
  }

}

