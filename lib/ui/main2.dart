import 'package:flutter/material.dart';
import 'package:ui/ui/screen.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"Record expense",
      debugShowCheckedModeBanner: false,
      home: ExpensePage(),
    );
  }
}

class ExpensePage extends StatefulWidget{
State<StatefulWidget> createState()=>ExpensePageState();
}

class ExpensePageState extends State<ExpensePage>{

  @override
  Widget build(BuildContext context) {
    TextStyle textstyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(230, 230, 230, 10.0),
        title: Text("Record Expense", style: TextStyle(color: Colors.black))
      ),
      body: Screen2(),
    );
  }
}



