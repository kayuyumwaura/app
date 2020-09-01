  import 'package:flutter/material.dart';

  class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"Record expense",
      debugShowCheckedModeBanner: false,
      home: Categories(),
    );
  }
}

class Categories extends StatefulWidget{
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State <Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(230, 230, 230, 10.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30), //row 2 container properties
                  // height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Prepared  By',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal)),
                        //text field
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  //controller: preparedbyController,
                                  decoration: InputDecoration(
                                      hintText: ('Enter Staff Name')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                //onPressed: clearTextInput9,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey,
                                  size: 16.0,
                                ), onPressed: () {  },
                              )
                            ]),

                        SizedBox(height: 20),
                        Text('Approved  By',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal)),
                        //text field
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  //controller: approvedbyController,
                                  decoration: InputDecoration(
                                      hintText: ('Enter Staff Name')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                //onPressed: clearTextInput10,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey,
                                  size: 16.0,
                                ), onPressed: () {  },
                              )
                            ]),

                        SizedBox(height: 20),
                        Text('Received  By',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal)),
                        //text field
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  //controller: receivedbyController,
                                  decoration: InputDecoration(
                                      hintText: ('Enter Staff Name')),
                                ),
                              ),
                              // ignore: missing_required_param
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                //onPressed: clearTextInput11,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey,
                                  size: 16.0,
                                ),
                              )
                            ]),
                      ]),
            )
        ],
     ) );
  }
}