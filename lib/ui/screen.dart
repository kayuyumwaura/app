import 'dart:async';
import 'dart:convert' show json;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/main.dart';
import 'package:ui/ui/main2.dart';
import 'package:http/http.dart' as http;

class Screen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Screen2State();
}

class Screen2State extends State<Screen2> {
  DateTime _dateTime;
  final double _formDistance = 5.0;
  final _currencies = ['KES', 'AED', 'YEN'];
  String _currency = 'KES';
  TextEditingController expenseController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  //clear icon in merchant
  var merchantController = TextEditingController();
  clearTextInput() {
    merchantController.clear();
  }

  //clear icon in tax
  var taxController = TextEditingController();
  clearTextInput2() {
    taxController.clear();
  }

  //clear icon in report
  var reportController = TextEditingController();
  clearTextInput3() {
    reportController.clear();
  }

  //itemize switch button
  bool isSwitched = false;
  //reimbursement switch button
  bool isSwitched1 = true;
//dropdown - Amount
  String _chosenValue = 'KES';
  final amounts = ['KES', 'EURO', 'YEN', 'Parisland', 'Quickmart'];
  List<String> merchant = ['KES', 'EURO', 'YEN', 'Parisland', 'Quickmart'];
//categorieslist
/*    String categoriesValue;
  final categories = [ "category_1",
    "category_2",
    "category_3",
    "category_4",
    "category_5","category 6"];*/
  //List<String> merchant = ['KES', 'EURO', 'YEN', 'Parisland', 'Quickmart'];

 final List<String> _categories = [
    "category_1",
    "category_2",
    "category_3",
    "category_4",
    "category_5","category 6"
  ];
  String selectedValue;
  String _selectedCategory;
  /*final myController = TextEditingController();
  final items = List<String>();
  String selectedValue;
  String _selectedCategory;*/
  /*_onChanged(String value){
    setState(() {
      dupitems = items.where(
        (string) => string.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }*/

//new getdata function
//get data from internet,. might take a whle so we use the async
//use future so that we return something when the function is down
  /*Future<String> getData() async {
    http.Response response = await http.get(
      "https://jsonplaceholder.typicode.com/posts",
      //authenticate here if necessary
      headers: {
        "Accept": "application/json"
      }
    );
   // print(response.body);
   List data = json.decode(response.body);
   print(data[1]["title"]);
   //print(data);
  }*/

  @override
  Widget build(BuildContext context) {
    TextStyle textstyle = Theme.of(context).textTheme.title;
    appBar:
    AppBar(
      backgroundColor: Color.fromRGBO(230, 230, 230, 10.0),
      title: Text("Record Expense", style: TextStyle(color: Colors.black)),
      actions: [
        IconButton(
            icon: Icon(
              Icons.save_alt,
              color: Colors.blueGrey[900],
            ),
            onPressed: () {})
      ],
    );
    return SingleChildScrollView(
        child: Container(
            color: Color.fromRGBO(230, 230, 230, 10.0),
            //height: 1800,
            child: Column(//whole page is a column
                children: <Widget>[
              //row 1
              Container(
                //to set row properties
                padding: EdgeInsets.all(30), //padding for all things in the row
                height: 150,
                color: Colors.white,
                child: Row(//row 1, Expense Date
                    children: <Widget>[
                  //column that has textfield and date input field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, //makes column items start at the start
                    children: <Widget>[
                      //textfield
                      Text(
                        "Expense Date*",
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                            color: Colors.redAccent),
                      ),
                      //date input field
                      Text(_dateTime == null ? ' ' : _dateTime.toString()),
                      RaisedButton(
                        color: Colors.white,
                        //border: Border.all( color: Colors.redAccent, width: 1),
                        //borderRadius: BorderRadius.circular(17),
                        child: Text(
                          'Please Select Date',
                          style: TextStyle(fontSize: 16),
                        ),
                        onPressed: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2030))
                              .then((date) {
                            setState(() {
                              _dateTime = date;
                            });
                          });
                        },
                      )
                    ],
                  ),

                  Stack(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      alignment: Alignment.topRight,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.turned_in,
                              color: Color.fromRGBO(230, 230, 230, 10.0),
                              size: 100,
                            )),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Attach \nReceipt',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey,
                            ),
                          ),
                        )
                      ])
                ]),
              ),

              SizedBox(
                height: 10,
              ),

              //row 2
              Container(
                  padding: EdgeInsets.all(30),
                  height: 230,
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Merchant',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  controller: merchantController,
                                  decoration: InputDecoration(
                                      hintText: ('Type or Select Merchant')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                onPressed: clearTextInput,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey[900],
                                  size: 16.0,
                                ),
                              )
                            ]),
                        SizedBox(height: 20),
                        Text(
                          'Merchant Pin No',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  controller: merchantController,
                                  decoration: InputDecoration(
                                      hintText: ('Enter Merchant Vat PIN')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                onPressed: clearTextInput,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey[900],
                                  size: 16.0,
                                ),
                              )
                            ]),
                        /*new Row(children: <Widget>[
                          Text(
                            'Itemize',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: (18),
                                color: Colors.blueGrey),
                          ),
                          //switch button
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeTrackColor: Colors.lightBlueAccent,
                            activeColor: Colors.blue,
                          )
                        ])*/
                      ])),

              SizedBox(height:10),
              Container(
                  padding: EdgeInsets.all(30),
                  height: 300,
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Payment Mode',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  controller: merchantController,
                                  decoration: InputDecoration(
                                      hintText: ('Type or Select Merchant')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                onPressed: clearTextInput,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey[900],
                                  size: 16.0,
                                ),
                              )
                            ]),
                        SizedBox(height: 20),
                        Text(
                          'Account',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  controller: merchantController,
                                  decoration: InputDecoration(
                                      hintText: ('Select Account')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                onPressed: clearTextInput,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey[900],
                                  size: 16.0,
                                ),
                              )
                            ]),
                            SizedBox(height: 20),
                        Text(
                          'Currency',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        DropdownButton<String>(
                                  value: _chosenValue,
                                  items: amounts.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                        value: value, child: Text(value));
                                  }).toList(),
                                  //value: amount_name,
                                  onChanged: (String value) {
                                    setState(() {
                                      _chosenValue = value;
                                    });
                                    //_onDropdownChanged(value);
                                  }),
                        /*new Row(children: <Widget>[
                          Text(
                            'Itemize',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: (18),
                                color: Colors.blueGrey),
                          ),
                          //switch button
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeTrackColor: Colors.lightBlueAccent,
                            activeColor: Colors.blue,
                          )
                        ])*/
                      ])),

              //row 3
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(30), //row 2 container properties
                  height: 450,
                  color: Colors.white,
                  child: Column(
                      //container elements are arranged in a column
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          //text field
                          'Category*',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.redAccent),
                        ),
                        SizedBox(height:10),
                        //input field
                        //InkWell(
                         /* child: Column(
                            mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_selectedCategory ?? "Select category"),
                            Icon(Icons.close),
                          ],
                              ),
                              SizedBox(height: 5,),
                              Divider(height: 10,),
                            ],),
                            onTap: (){
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  content: CategoryList(
                                    onSelect: (String value){
                                      setState(() {
                                        selectedValue = value;
                                      });
                                    }),
                                ));
                            },
                            ),*/
                        new Row(
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  onTap: ()async {
                                    final result= await
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryList()),
                                    );
                                    categoryController.text=result;
                                  },
                                  controller: categoryController,
                                  decoration: InputDecoration(
                                      hintText: ('Select Category')),
                                ),
                              ),
                            ]),
                        SizedBox(height: 20),
                        //amount
                        Text(
                          'Amount*',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.redAccent),
                        ),
                        //dropdown
                        new Row(
                            //alignment: Alignment.center,
                            children: <Widget>[
                              DropdownButton<String>(
                                  value: _chosenValue,
                                  items: amounts.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                        value: value, child: Text(value));
                                  }).toList(),
                                  //value: amount_name,
                                  onChanged: (String value) {
                                    setState(() {
                                      _chosenValue = value;
                                    });
                                    //_onDropdownChanged(value);
                                  }),
                              new Flexible(
                                child: new TextField(
                                  controller: amountController,
                                  keyboardType: TextInputType.number,
                                  decoration:
                                      InputDecoration(hintText: ('0.00')),
                                ),
                              ),
                            ]),
                        SizedBox(height: 20),
                        //tax input field
                        Text(
                          'Tax',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  controller: taxController,
                                  decoration: InputDecoration(
                                      hintText: ('Type to select tax')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                onPressed: clearTextInput2,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey,
                                  size: 16.0,
                                ),
                              )
                            ]),

                        SizedBox(height: 20.0),
                        //description
                        Text(
                          'Description',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        TextField(
                          controller: descriptionController,
                        )
                      
                      ])),

              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(30), //row 2 container properties
                  height: 100,
                  color: Colors.white,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Claim Reimbursement',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: (18),
                              color: Colors.blueGrey),
                        ),
                        //switch button
                        Align(
                            alignment: Alignment.centerRight,
                            child: Switch(
                              value: isSwitched1,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                              activeTrackColor: Colors.redAccent[100],
                              activeColor: Colors.redAccent,
                            ))
                      ])),

              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(30), //row 2 container properties
                  height: 130,
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Reimbursement',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal)),
                        //text field
                        TextField()
                      ])),

              SizedBox(height: 10.0),
              //to set row properties
              Container(
                  padding: EdgeInsets.all(30), //row 2 container properties
                  height: 130,
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Add To Report',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal)),
                        //text field
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  controller: reportController,
                                  decoration: InputDecoration(
                                      hintText: ('Select Report')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                onPressed: clearTextInput3,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey,
                                  size: 16.0,
                                ),
                              )
                            ]),
                      ])),

              SizedBox(height: 10.0),
              //to set row properties
              //save button area
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
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          hoverColor: Colors.white,
                          color: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17.0),
                              side: BorderSide(color: Colors.red)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          splashColor: Colors.grey,
                          // onPressed: getData
                          onPressed: () {
                            return showDialog(
                              context: context, 
                              builder: (context){
                                return AlertDialog(
                                  content:
                                  Container(height: 300,width: 300,
                                  child:ListView(
                                    children: <Widget>[
                                        ListTile(
                                          title: Text(_dateTime.toString(),
                                        ),),
                                         ListTile(
                                          title: Text(merchantController.text),
                                       ),
                                       ListTile(
                                          title: Text(categoryController.text),
                                       ),
                                       ListTile(
                                          title: Text(_chosenValue),
                                       ),
                                       ListTile(
                                          title: Text(taxController.text),
                                       ),
                                       ListTile(
                                          title: Text(expenseController.text),
                                       ),
                                       ]
                                  )
                                  )
                                );
                              },
                            );
                        
                            /* return showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                      content: ListView(
                                        shrinkWrap: true,
                                          //merchantController.text
                                          children: <Widget>[
                                        ListTile(
                                          title: Text(merchantController.text),
                                        ),
                                        /* ListTile(
                         title: Text(categoryController.text),
                       ),
                       ListTile(
                         title: Text(amountController.text),
                       ),
                       ListTile(
                         title: Text(taxController.text),
                       ),
                       ListTile(
                         title: Text(reportController.text),
                       )*/
                                      ]));
                                });*/
                          },
                        ),
                      ]))
            ])));
  }
}

void _onDropdownChanged(String value) {}

class CategoryList extends StatelessWidget {
  CategoryList({this.onSelect});
  final Function(String) onSelect;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
          body:ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text("category_${index+1}"),
          onTap: (){

            print("category_${index+1}");
            Navigator.of(context).pop("category_${index+1}");
          },
        );
      },
      )
    );
  }
}
/*
class CategoryList extends StatelessWidget {
  CategoryList({this.onSelect});
  final Function(String) onSelect;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2000,
      height: 100000,
      child: ListView.builder(
      itemCount: 6,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text("category_${index+1}"),
          onTap: (){
            onSelect("category_${index+1}");
            Navigator.of(context).pop();
          },
        );
      },
    ));
  }
}*/
