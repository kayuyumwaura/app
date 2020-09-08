import 'package:flutter/material.dart';
import 'package:ui/ui/screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Record expense",
      debugShowCheckedModeBanner: false,
      home: Categories(),
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

//clear icon in merchant
  var categorynameController = TextEditingController();
  clearTextInput0() {
    categorynameController.clear();
  }

  //clear icon in merchant
  var descriptionController = TextEditingController();
  clearTextInput1() {
    descriptionController.clear();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(230, 230, 230, 10.0),
          title: Text("Add Category",
              style: TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.bold)),
        ),
        body: new Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30), //row 2 container properties
              height: 700,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Category Name',
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
                              controller: categorynameController,
                              decoration:
                                  InputDecoration(hintText: ('Enter Category Name')),
                            ),
                          ),
                          IconButton(
                            //onPressed: () => _controller.clear(),
                            onPressed: clearTextInput0,
                            icon: Icon(
                              Icons.clear,
                              color: Colors.blueGrey,
                              size: 16.0,
                            ),
                          )
                        ]),

                    SizedBox(height: 20),
                    Text('Description',
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
                              controller: descriptionController,
                              decoration:
                                  InputDecoration(hintText: ('Description')),
                            ),
                          ),
                          IconButton(
                            //onPressed: () => _controller.clear(),
                            onPressed: clearTextInput1,
                            icon: Icon(
                              Icons.clear,
                              color: Colors.blueGrey,
                              size: 16.0,
                            ),
                          )
                        ]),

                    Container(
                        padding: EdgeInsets.all(30), //row container properties
                        // height: 120,
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              RaisedButton(
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                hoverColor: Colors.white,
                                color: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17.0),
                                    side: BorderSide(color: Colors.red)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                // splashColor: Colors.grey,
                                // onPressed: getData
                                onPressed: () {
                                  //addItemToList();
                                },                                  
                              /*  onPressed: () async{
                                  final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryList()),
                                );
                                categorynameController.text = result;
                                /*  return showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                          content: Container(
                                              height: 900,
                                              width: 300,
                                              child:
                                                  ListView(children: <Widget>[
                                                 ListTile(
                                            title: Text(
                                              categorynameController.text,
                                            ),
                                          ),
                                          ListTile(
                                            title:
                                                Text(descriptionController.text),
                                          ),
                                              ])));
                                    },
                                  );*/
                                },*/
                              ),
                            ]))
                  ]),
            )
          ],
        ));
  }
}
