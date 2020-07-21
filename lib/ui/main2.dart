import 'package:flutter/material.dart';
import 'package:ui/main.dart';
import 'package:ui/ui/dashboard.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"Record expense",
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

class Screen2 extends StatefulWidget{
State<StatefulWidget> createState()=>Screen2State();
}

class Screen2State extends State<Screen2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);
        })],
        title: Text("Record Expense")
      ),
      body: Screen2(),
    );
  }
}

