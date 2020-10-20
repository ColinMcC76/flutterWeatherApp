import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Weather 24/7'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key); 

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/clouds.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Weather(),
      ),
    );
  }
}

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.wb_cloudy,
            color: Colors.grey,
            size: 120.0
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Weather 24/7',
              style: TextStyle(
                fontSize: 44,
                color: Colors.lightBlue,
              ),
            ),
          ),
          RaisedButton(
            color: Colors.grey,
            onPressed: () {},
            child: Text('What\'s the weather?'),
            )
          
        ],
      ),
    );
  }
}