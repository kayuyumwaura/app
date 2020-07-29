import 'package:flutter/material.dart';
import 'package:ui/ui/dashboard.dart';
import 'package:ui/ui/main2.dart';
import 'package:ui/ui/screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
title:"Cash expense",
debugShowCheckedModeBanner: false,
home: UIApp(),
    );
  }
}
class UIApp extends StatefulWidget{
State<StatefulWidget> createState()=>UIAppState();
}
class UIAppState extends State<UIApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[30],
        title: Text('Dashboard'),
        actions: [IconButton(icon: Icon(Icons.notifications_none), onPressed: (){})],
      ),
 body: Screen1(),     
      drawer: Drawer(
      /*  UserAccountsDrawerHeader(
         accountName: Text("Kayuyu Mwaura"),
         accountEmail: Text("mwaurakayuyu@gmail.com"),
         currentAccountPicture: CircleAvatar(
         backgroundColor:
        Theme.of(context).platform == TargetPlatform.iOS
            ? Colors.blue
            : Colors.white,
    child: Text(
      "KM",
      style: TextStyle(fontSize: 18.0),
    ),
  ),
),*/
          child: ListView(
    children: <Widget>[
      ListTile(
        title: Text("Item 1"),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        title: Text("Item 2"),
        trailing: Icon(Icons.arrow_forward),
      ),
       ListTile(
        title: Text("Item 3"),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        title: Text("Item 4"),
        trailing: Icon(Icons.arrow_forward),
      ),
    ],
  ),
      ), 
      // float + button
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.white,
        child: IconButton(
            icon: Icon(Icons.add),
            color: Colors.redAccent,
            iconSize: 25,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExpensePage()),
              );
            },
          ),
      ),

      
    );
  }
}

/*class Screen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

  }

}*/