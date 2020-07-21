
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu
          ),
          title: Text("Dashboard"),
          backgroundColor: Colors.grey[300],
          actions: <Widget>[
            Icon(Icons.notifications),
          ],
        ),
       // body: UIApp( ),
      ),
    );
  }
}  

