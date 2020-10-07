import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui/ui/main2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

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
  String _username, _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Form(
          key: _formkey,
          child: Column(
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
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(225.0, 200.0, 0.0, 0.0),
                    child: Text(
                      '.',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent),
                    ))
              ],
            )),
            SizedBox(height: 30),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      onSaved: (input) => _username = input,
                      controller: usernameController,
                      decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'Roboto',
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.redAccent))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onSaved: (input) => _email = input,
                      controller: emailController,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'Roboto',
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.redAccent))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onSaved: (input) => _password = input,
                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'Roboto',
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.redAccent))),
                      obscureText: true,
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
                              onTap: () async {
                                try {
                                  await Firebase.initializeApp();
                                  UserCredential user = await FirebaseAuth
                                      .instance
                                      .createUserWithEmailAndPassword(
                                          email: emailController.text,
                                          password: passwordController.text);
                                  User updateUser =
                                      FirebaseAuth.instance.currentUser;
                                  updateUser.updateProfile(displayName: usernameController.text);
                                  //userSetup(usernameController.text);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ExpensePage()));
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'weak-password') {
                                    print('The password is too weak');
                                  } else if (e.code == 'email-already-in-use') {
                                    print(
                                        'The account already exists for that email');
                                  }
                                } catch (e) {
                                  print(e.toString());
                                }
                                /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ExpensePage())
                        );*/
                              },
                              child: Center(
                                child: Text('Sign Up',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold)),
                              )),
                        )),
                    SizedBox(height: 20),
                    Container(
                        height: 40.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.blueGrey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30)),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Center(
                                child: Text(
                              'Go Back',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18.0),
                            )),
                          ),
                        ))
                  ],
                ))
          ],
        )));
  }

  //signup
  void signUp() async {
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
            return new AlertDialog(
                content: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(children: <Widget>[
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
