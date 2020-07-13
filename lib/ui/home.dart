
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu
          ),
          title: Text("Dashboard"),
          backgroundColor: Colors.grey[300],
          actions: <Widget>[
            Icon(Icons.notifications),
          ],
        ),
        body: MyHomePage( ),
      ),
    );
  }
}


class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
  }

}

class MainContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: new Container(
          child: new Column(children: <Widget>[
            Row(children: <Widget>[
               new Expanded(
                      child: new Container(
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 1.5, right: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Color(0XFC5C65),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                  ),
                                  new Text('0',
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 1.5, right: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                  ),
                                  new Text('Unreported Expenses',
                                      style: new TextStyle(color: Colors.black87))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),

             new Expanded(
                      child: new Container(
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 1.5, right: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Color(0X26DE81),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                  ),
                                  new Text('0',
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 1.5, right: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                  ),
                                  new Text('Unsubmitted Reports',
                                      style: new TextStyle(color: Colors.black87))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),

              new Expanded(
                      child: new Container(
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 1.5, right: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Color(0XFA8231),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                  ),
                                  new Text('0',
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 1.5, right: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                  ),
                                  new Text('Submitted Reports',
                                      style: new TextStyle(color: Colors.black87))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))

            ],
            ),
//second row
            new SizedBox(
              height: 10.0,
            ),
            Row(children: <Widget>[
              new Expanded(
                child: new Icon(
                  Icons.bookmark_border,
                  color: Colors.black87,
                )
                ),
              new Expanded(
                child: new Text("Recent Reports", style: new TextStyle(fontSize: 8.0),)
                ),
              new Expanded(
                child: new Icon(
                  Icons.arrow_right,
                  color: Colors.orange, 
                )
                )
            ],
            ),

            Row(children: <Widget>[
              new Expanded(
                child: Container(
                  color: Colors.white,
                  child: new Text("There are no recent reports", style: new TextStyle(fontSize: 8.0), textAlign: TextAlign.center, ),
              ),
              ),
              Expanded(
                child: RaisedButton(
                  textColor: Colors.orange,
                  color: Colors.white,
                  child: Text("New Report",),
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),),
                  )
                  )
            ])

          ],)
        ),
        )
      ],
    );
  }

}