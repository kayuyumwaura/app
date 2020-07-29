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
        actions: [IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);
        })],
        title: Text("Record Expense")
      ),
      body: Screen2(),
    );
  }
}



