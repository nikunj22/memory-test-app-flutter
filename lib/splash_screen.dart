import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:memory_test/main.dart';

void main() => runApp(splashscreen());

class splashscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:splash(),
    );
  }
}

class splash extends StatefulWidget {
  splash({Key key,this.title}) : super(key: key);

  final String title;

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {

  get color => Colors.white;


  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds:5),() async =>Navigator.push(context, MaterialPageRoute(builder: (context)=>Home())));
  }






  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:(Colors.white),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: Image.asset('assets/logo3.jpg',)),
            // Text("Memory Test", style: TextStyle(
            //   color: Colors.blue,
            //   fontSize: 20,
            //     fontWeight: FontWeight.w500),),
            //
          SizedBox(height: 40.0),

        SpinKitChasingDots(color: Colors.green,size :40),




        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
