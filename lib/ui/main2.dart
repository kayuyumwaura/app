import 'package:flutter/material.dart';
import 'package:ui/main.dart';
import 'package:ui/ui/dashboard.dart';
import 'package:ui/ui/screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"Record expense",
      debugShowCheckedModeBanner: false,
      home: Screen2(),
    );
  }
}

class ExpensePage extends StatefulWidget{
State<StatefulWidget> createState()=>ExpensePageState();
}

class ExpensePageState extends State<ExpensePage>{
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

