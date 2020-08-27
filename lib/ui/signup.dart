import 'package:flutter/material.dart';

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
        body: SignUpPage(),
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUpPageState();
}

 class SignUpPageState extends State<SignUpPage> {
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
              padding: EdgeInsets.fromLTRB(20.0, 200.0, 0.0, 0.0),
              child: Text(
                'SignUp',
                style: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold, color: Colors.blueGrey
                  ),
                )
              ),
              Container(
              padding: EdgeInsets.fromLTRB(225.0, 200.0, 0.0, 0.0),
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
                            fontWeight: FontWeight.bold
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
                        SizedBox(height: 40),
                        Container(
                          height: 50.0,
                           child: Material(
                             borderRadius: BorderRadius.circular(30.0),
                             shadowColor: Colors.redAccent,
                             color: Colors.redAccent,
                             elevation: 7.0,
                             child: GestureDetector(
                               onTap: () {},
                               child: Center(
                                 child: Text(
                                   'Sign Up', 
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
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: Center(
                                  child: Text('Go Back', 
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
              )
      ],)
    );
  }

 }
