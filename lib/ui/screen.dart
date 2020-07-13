import 'package:flutter/material.dart';

class ChatItemScreen extends StatelessWidget{

  final leftSection = new Expanded(
    child: new Container(
      padding: new EdgeInsets.only(left: 8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Text("Zero",
          style: new TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
          ),
        ),
        new Text ("Unreported Expenses", 
        style: new TextStyle(color: Colors.grey),),
      ],
    ),
    )
  );

  final middleSection = new Expanded(
    child: new Container(
      padding: new EdgeInsets.only(left: 8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Text("Zero",
          style: new TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
          ),
        ),
        new Text ("Unsubmitted Reports", 
        style: new TextStyle(color: Colors.grey),),
      ],
    ),
    )
  );
  
  final rightSection = new Expanded(
    child: new Container(
      padding: new EdgeInsets.only(left: 8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Text("Zero",
          style: new TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
          ),
        ),
        new Text ("Submitted Reports", 
        style: new TextStyle(color: Colors.grey),),
      ],
    ),
    )
  );
  
  @override
  Widget build(BuildContext context) {
      return new Container(
        padding: new EdgeInsets.symmetric(vertical: 10.0,
        horizontal: 8.0),
        height: 70.0,
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            leftSection,
            middleSection,
            rightSection
          ],
        ),
      );
  }
}