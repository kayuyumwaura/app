import 'package:flutter/material.dart';
//import 'package:ui/ui/dashboard.dart';
import 'package:ui/ui/main2.dart';
//import 'package:ui/ui/screen.dart';
//import 'package:firebase/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ui/ui/signup.dart';

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
//import 'package:flutter/material.dart';

//import 'package:new_project/screens/signup.dart';

/* void main() {
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
} */

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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Home());
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  String _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Stack(
                  children: <Widget>[
                    //hello
                    Container(
                      //width: MediaQuery.of(context).size.width * 1.0,
                      //height: MediaQuery.of(context).size.height * 0.3,
                        padding: EdgeInsets.fromLTRB(20.0, 150.0, 0.0, 0.0),
                        child: Text(
                          'Hello',
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        )),
                        //there
                    Container(
                      //width: MediaQuery.of(context).size.width * 1.0,
                      //height: MediaQuery.of(context).size.height * 0.4 ,
                        padding: EdgeInsets.fromLTRB(20.0, 210.0, 0.0, 0.0),
                        child: Text(
                          'There',
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        )),
                        
                    Container(
                     // height: MediaQuery.of(context).size.height * 0.4,
                        padding: EdgeInsets.fromLTRB(190.0, 220.0, 0.0, 0.0),
                        child: Text(
                          '.',
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ))
                  ],
                )),
                SizedBox(height: 5.0),
                Container(
                     // width: MediaQuery.of(context).size.width * 1.0,
                     // height: MediaQuery.of(context).size.height * 0.4,
                    padding:
                        EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'Please enter your email';
                            }
                          },
                          onSaved: (input) => _email = input,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.blueGrey,
                                  fontFamily: 'Roboto',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.redAccent))),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          validator: (input) {
                            if (input.length < 6) {
                              return 'Please enter a longer password';
                            }
                          },
                          onSaved: (input) => _password = input,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.blueGrey,
                                  fontFamily: 'Roboto',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.redAccent))),
                          obscureText: true,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                      //width: MediaQuery.of(context).size.width * 1.0,
                      //height: MediaQuery.of(context).size.height * 0.4,
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.only(top: 15.0, left: 20.0),
                            child: InkWell(
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Colors.redAccent, fontSize: 17.0),
                              ),
                            )),
                        SizedBox(height: 50),
                        Container(
                     // width: MediaQuery.of(context).size.width * 1.0,
                     // height: MediaQuery.of(context).size.height * 0.4,
                            height: 40.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(30.0),
                              shadowColor: Colors.redAccent,
                              color: Colors.redAccent,
                              elevation: 7.0,
                              child: GestureDetector(
                                  onTap: signIn,
                                  /*() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ExpensePage()));
                                  },*/
                                  child: Center(
                                    child: Text('Login',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.normal)),
                                  )),
                            )),
                        SizedBox(height: 20),
                        Container(
                      //width: MediaQuery.of(context).size.width * 1.0,
                      //height: MediaQuery.of(context).size.height * 0.4,
                            height: 40.0,
                            color: Colors.transparent,
                            child: Container(
                      //width: MediaQuery.of(context).size.width * 1.0,
                      //height: MediaQuery.of(context).size.height * 0.4,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.blueGrey,
                                      style: BorderStyle.solid,
                                      width: 1.0),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(30)),
                              child: InkWell(
                                onTap: () {},
                                child: Center(
                                    child: Text(
                                  'Login with Outlook',
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18.0),
                                )),
                              ),
                            ))
                      ],
                    )),
                SizedBox(height: 120),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'New to TG Expenses?',
                      style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 18.0,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
              ],
            )));
  }

  void signIn() async {
    //validate
    //final formState = _formkey.currentState;
    if (_formkey.currentState.validate()) {
      _formkey.currentState.save();
      try {
        UserCredential user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ExpensePage()));
      } catch (e) {
        //print(e.message);
        return showDialog(
          context: context,
          builder: (context) {
            Future.delayed(Duration(seconds: 10), () {
              Navigator.of(context).pop(true);
            });
          AlertDialog alert = AlertDialog(
            content: Container(

            ),
          );
          });

        return showDialog(
          context: context,
          builder: (context) {
            Future.delayed(Duration(seconds: 10), () {
              Navigator.of(context).pop(true);
            });
            return AlertDialog(
                content: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
              child: Column(
                children: <Widget>[
                Text('Please enter valid credentials.'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'New to TG Expenses?',
                      style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 18.0,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
              ]),
            ));
          },
        );
      }
    }
  }
}
