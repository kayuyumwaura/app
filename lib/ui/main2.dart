import 'package:flutter/material.dart';
import 'package:ui/ui/screen.dart';
import 'package:ui/main.dart';

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
TextEditingController merchantController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(230, 230, 230, 10.0),
        title: Text("Record Expense", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold)),
        actions: [IconButton(
          icon: Icon(
            Icons.power_settings_new, color: Colors.blueGrey,), 
            onPressed: (){
              Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home())
                        );
            }
            )
            ],
      ),
      body: Screen2(),
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
            padding: EdgeInsets.all(0),
    children: <Widget>[
      UserAccountsDrawerHeader(
        
         accountName: Text("Kayuyu Mwaura", style: TextStyle( color:Colors.blueGrey)),
         accountEmail: Text("mwaurakayuyu@gmail.com", style: TextStyle( color:Colors.blueGrey)),
         currentAccountPicture: CircleAvatar(
         backgroundColor: Colors.white,
         
    child: Text(
      "KM", 
      style: TextStyle(fontSize: 18.0, color:Colors.redAccent),
    ),
  ),
),
      /*DrawerHeader(
        child: Icon(Icons.person_outline, color:Colors.redAccent,size: 130.0,),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
      ),*/
      ListTile(
        leading: Icon(Icons.person, color: Colors.redAccent, size: 20.0,),
        title: Text("My Profile", style: TextStyle(color: Colors.blueGrey, fontSize: 18.0),),
        onTap: () {
          //update state
          Navigator.pop(context);
        },
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.redAccent, size: 15.0,),
      ),
      ListTile(
        leading: Icon(Icons.notifications, color: Colors.redAccent, size: 20.0,),
        title: Text("Notifications", style: TextStyle(color: Colors.blueGrey, fontSize: 18.0),),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.redAccent, size: 15.0,),
      ),
       ListTile(
         leading: Icon(Icons.share, color: Colors.redAccent, size: 20.0,),
        title: Text("Share", style: TextStyle(color: Colors.blueGrey, fontSize: 18.0),),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.redAccent, size: 15.0,),
      ),
      ListTile(
        leading: Icon(Icons.settings, color: Colors.redAccent, size: 20.0,),
        title: Text("Settings", style: TextStyle(color: Colors.blueGrey, fontSize: 18.0),),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.redAccent, size: 15.0,),
      ),
    ],
  ),
      )
    );
  }
}



