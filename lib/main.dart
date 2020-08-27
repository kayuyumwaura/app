
import 'package:flutter/material.dart';
import 'package:ui/ui/signup.dart';
import 'package:ui/ui/dashboard.dart';

/*void main() {
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
        backgroundColor: Color.fromRGBO(230, 230, 230, 10.0),
        title: Text('Dashboard', style: TextStyle(color: Colors.black)),
        actions: [IconButton(icon: Icon(Icons.notifications_none, color: Colors.blueGrey[900],), onPressed: (){})],
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
      /*BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),*/
      
    );
  }
}*/



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      home: Scaffold(
        /*appBar: AppBar(
          title: Text("Dashboard"),
        ),*/
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

/*class HomeState extends State<Home> {
  TextEditingController textfieldController = TextEditingController();
  final duplicateItems = List<String>.generate(100, (i) => "Item $i");
  var items = List<String>();
  _onChanged(String value) {
    setState(() {
      items = duplicateItems.where((string) => string.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(230, 230, 230, 10.0),
        padding: EdgeInsets.all(30),
        // height: 100,
        // width: 500,
        //color: Colors.blue,
        child: Column(children: <Widget>[
          Text('Enter Text'),
          TextField(
            onChanged: _onChanged,
            controller: textfieldController,
           // decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
          ),
          RaisedButton(
            onPressed: () {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(textfieldController.text),
                  );
                },
              );
            },
            child: Text('Submit'),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text('${items[i]}'),
                );
              },
            ),
          )
        ]));
  }
}*/

/*import 'package:flutter/material.dart';
void main() {runApp(MyApp());}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return new MaterialApp(title: "Cash Expense",
   debugShowCheckedModeBanner: false,
   home:testtextfield(),);
   }}
// ignore: camel_case_types
class testtextfield extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>testtextfieldstate(); }
  // ignore: camel_case_types
  class testtextfieldstate extends State<testtextfield>{
  final mycontroller=TextEditingController();
  final items=List<String>.generate(100, (index) => "item$index");
  var dupitems=List<String>();
  String selectedvalue;
  String selectedCategory;
  _onChanged(String value){setState(() {
    
    dupitems=items.where((string) => 
  string.toLowerCase().contains(value.toLowerCase())).toList();
 
  });}
  @override
  void initState(){
    dupitems.addAll(items); 
    super.initState();}
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(
       title:Text( "Demo",)
       ),
   body: Container(
     child: Column(
       children:<Widget>[
       Text(
         "username"
         ),
       TextFormField(
         onChanged:_onChanged,
         controller: mycontroller,
         ),
        RaisedButton(
           child: Text(
             "press me"
             ),
                color: Colors.red,
                textColor: Colors.yellow,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey, onPressed: (){ 
                  return showDialog(
                    context: context,
                    builder:(context){
                  return  AlertDialog(
                    content: Text(
                      mycontroller.text
                      ),
                      );
                  });
                  },
                  ),
                 Expanded(
                   child: ListView.builder(
                     shrinkWrap: true,
                     itemCount:dupitems.length,
                     itemBuilder: (
                       context,index){
                   return ListTile(
                     title:Text(
                       '${dupitems[index]}'
                       )
                       );
                 }),
                 )
                 ]),
                 ));
               }}*/




 class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 150.0, 0.0, 0.0),
              child: Text(
                'Hello',
                style: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold, color: Colors.blueGrey
                  ),
                )
              ),
              Container(
              padding: EdgeInsets.fromLTRB(20.0, 220.0, 0.0, 0.0),
              child: Text(
                'There',
                style: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold, color: Colors.blueGrey
                  ),
                )
              ),
              Container(
              padding: EdgeInsets.fromLTRB(190.0, 220.0, 0.0, 0.0),
              child: Text(
                '.',
                style: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold, color: Colors.redAccent
                  ),
                )
              )
          ],)
        ),
        SizedBox(height: 30),
        Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: 'Roboto',
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.redAccent))
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: 'Roboto',
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.redAccent)
                              )
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.only(top: 15.0, left: 20.0 ),
                          child: InkWell(
                            child: Text('Forgot Password',
                            style: TextStyle(color: Colors.redAccent, fontSize: 17.0),
                            ),
                            )
                        ),
                        SizedBox(height: 60),
                        Container(
                          height: 45.0,
                           child: Material(
                             borderRadius: BorderRadius.circular(30.0),
                             shadowColor: Colors.redAccent,
                             color: Colors.redAccent,
                             elevation: 7.0,
                             child: GestureDetector(
                               onTap: () {
                                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen1()),
              );
                               },
                               child: Center(
                                 child: Text(
                                   'Login', 
                                   style: TextStyle(
                                     color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)
                                     ),
                                 )
                               ),
                             )
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blueGrey,
                                style: BorderStyle.solid,
                                width: 1.0
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30)
                              ),
                              child: InkWell(
                                onTap: (){},
                                child: Center(
                                  child: Text('Login with Outlook', 
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 18.0
                                    ),
                                  )
                                  ),
                                ),
                            )
                        )
                    ],)
              ),
              SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text ('New to Expenses?',
                    style: TextStyle(
                      fontSize: 18.0, color: Colors.blueGrey
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage())
                        );
                      },
                      child: Text('Register',
                      style: TextStyle(
                        color: Colors.redAccent, 
                        fontSize: 18.0,
                        decoration: TextDecoration.underline
                        ),
                      ),
                      
                      )
                ],
                )
      ],)
    );
  }

 }

