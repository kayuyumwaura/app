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
  //clear icon in merchant
  var dateController = TextEditingController();
  clearTextInput0() {
    dateController.clear();
  }

  //clear icon in merchant
  var merchantController = TextEditingController();
  clearTextInput() {
    merchantController.clear();
  }

  //merchantpin
  var merchantpinController = TextEditingController();
  clearTextInput1() {
    merchantpinController.clear();
  }

  //paymentmode
  var paymentmodeController = TextEditingController();
  clearTextInput2() {
    paymentmodeController.clear();
  }

  //account
  var accountController = TextEditingController();
  clearTextInput3() {
    accountController.clear();
  }

  //category
  var categoryController = TextEditingController();
  clearTextInput4() {
    categoryController.clear();
  }

  //customers
  var customerController = TextEditingController();
  clearTextInput5() {
    customerController.clear();
  }

  //project
  var projectController = TextEditingController();
  clearTextInput6() {
    projectController.clear();
  }

  //description
  var descriptionController = TextEditingController();
  clearTextInput7() {
    descriptionController.clear();
  }

  //amount
  var amountController = TextEditingController();
  clearTextInput8() {
    amountController.clear();
  }

  //preparedby
  var preparedbyController = TextEditingController();
  clearTextInput9() {
    preparedbyController.clear();
  }

  //approvedby
  var approvedbyController = TextEditingController();
  clearTextInput10() {
    approvedbyController.clear();
  }

  //receivedby
  var receivedbyController = TextEditingController();
  clearTextInput11() {
    receivedbyController.clear();
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

  /*final List<String> _categories = [
    "category_1",
    "category_2",
    "category_3",
    "category_4",
    "category_5","category 6"
  ];
  String selectedValue;
  String _selectedCategory;*/

  //radio button
  String _radioValue;
  String choice;
  void radioButtonChanges(String value) {
    setState(() {
      _radioValue = value;
      switch (value) {
        case 'Cash':
          choice = value;
          break;
        case 'Card':
          choice = value;
          break;
        case 'Credit':
          choice = value;
          break;
        default:
          choice = null;
      }
    });
  }

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
  List data;
  Future<String> getData() async {
    http.Response response =
        await http.get("https://jsonplaceholder.typicode.com/posts",
            //authenticate here if necessary
            headers: {
          "Accept": "application/json" //telling it to accept json data
        });
     print(response.body);
    //List data = json.decode(response.body);
    //print(data[1]["title"]);
    print(data);
  }

  //add item

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
              /* Container(
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
              ),*/
              //row 2
              Container(
                  padding: EdgeInsets.all(30),
                  //height: 230,
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Expense Date",
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: Colors.blueGrey),
                        ),
                        //date input field
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  controller: dateController,
                                  decoration: InputDecoration(
                                    
                                    prefixIcon: Icon(
                                      Icons.date_range,
                                      color: Colors.blueGrey,
                                      
                                    ),
                                    hintText: ('Select Date'),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: clearTextInput0,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey[900],
                                  size: 16.0,
                                ),
                              )
                            ]),
                        RaisedButton(
                          color: Colors.white,
                          //border: Border.all( color: Colors.redAccent, width: 1),
                          //borderRadius: BorderRadius.circular(17),
                          child: Text(
                            _dateTime == null ? ' ' : _dateTime.toString(),
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
                        ),

                        SizedBox(height: 20),
                        Text(
                          'Merchant',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        new Row(children: <Widget>[
                          new Flexible(
                            child: new TextField(
                              onTap: () async {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MerchantList()),
                                );
                                merchantController.text = result;
                              },
                              controller: merchantController,
                              decoration: InputDecoration(
                                  hintText: ('Select Merchant')),
                            ),
                          ),
                          IconButton(
                            onPressed: clearTextInput,
                            icon: Icon(
                              Icons.clear,
                              color: Colors.blueGrey,
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
                                  controller: merchantpinController,
                                  decoration: InputDecoration(
                                      hintText: ('Enter Merchant Vat PIN')),
                                ),
                              ),
                              IconButton(
                                onPressed: clearTextInput1,
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

              SizedBox(height: 10),
              Container(
                  padding: EdgeInsets.all(30),
                  height: 315,
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Payment Mode',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Radio(
                                value: 'Cash',
                                groupValue: _radioValue,
                                onChanged: radioButtonChanges,
                              ),
                              Text('Cash',
                              style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),),
                              Radio(
                                value: 'Card',
                                groupValue: _radioValue,
                                onChanged: radioButtonChanges,
                              ),
                              Text('Card',
                              style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),),
                              Radio(
                                value: 'Credit',
                                groupValue: _radioValue,
                                onChanged: radioButtonChanges,
                              ),
                              Text('Credit',
                              style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),
                              )
                              /*  Expanded(child: 
                              RadioListTile(
                                title: Text('Cash',
                                style: TextStyle(color: Colors.blueGrey),),
                                value: 0,
                                groupValue: radioItem,
                                onChanged: (val){
                                  setState(() {
                                    radioItem = val;
                                  });
                                },
                              ),),
                              Expanded(child: 
                              RadioListTile(
                                title: Text('Cheque', 
                                style: TextStyle(color: Colors.grey),),
                                value: 0,
                                groupValue: radioItem,
                                onChanged: (val){
                                  setState(() {
                                    radioItem = val;
                                  });
                                },
                              ),
                              )
                              */
                            ]),
                        Divider(
                          color: Colors.blueGrey,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Account',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        new Row(children: <Widget>[
                          new Flexible(
                            child: new TextField(
                              onTap: () async {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AccountList()),
                                );
                                accountController.text = result;
                              },
                              controller: accountController,
                              decoration:
                                  InputDecoration(hintText: ('Select Account')),
                            ),
                          ),
                          IconButton(
                            onPressed: clearTextInput4,
                            icon: Icon(
                              Icons.clear,
                              color: Colors.blueGrey,
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
                            items: amounts
                                .map<DropdownMenuItem<String>>((String value) {
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
                  //height: 550,
                  color: Colors.white,
                  child: Column(
                      //container elements are arranged in a column
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          //text field
                          'EXPENSES',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: (17),
                            color: Colors.blueGrey,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          //text field
                          'Category',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        SizedBox(height: 10),
                        //input field
                        new Row(children: <Widget>[
                          new Flexible(
                            child: new TextField(
                              onTap: () async {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryList()),
                                );
                                categoryController.text = result;
                              },
                              controller: categoryController,
                              decoration: InputDecoration(
                                  hintText: ('Select Expense Category')),
                            ),
                          ),
                          IconButton(
                            onPressed: clearTextInput4,
                            icon: Icon(
                              Icons.clear,
                              color: Colors.blueGrey,
                              size: 16.0,
                            ),
                          )
                        ]),
                        SizedBox(height: 20),
                        //customer
                        Text(
                          'Customer',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.blueGrey,
                            fontSize: (16),
                          ),
                        ),
                        //textfield
                        new Row(children: <Widget>[
                          new Flexible(
                            child: new TextField(
                              onTap: () async {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CustomerList()),
                                );
                                customerController.text = result;
                              },
                              controller: customerController,
                              decoration: InputDecoration(
                                  hintText: ('Select Customer')),
                            ),
                          ),
                          IconButton(
                            onPressed: clearTextInput4,
                            icon: Icon(
                              Icons.clear,
                              color: Colors.blueGrey,
                              size: 16.0,
                            ),
                          )
                        ]),

                        SizedBox(height: 20),
                        //tax input field
                        Text(
                          'Project',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: (16),
                              color: Colors.blueGrey),
                        ),
                        new Row(children: <Widget>[
                          new Flexible(
                            child: new TextField(
                              onTap: () async {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProjectList()),
                                );
                                projectController.text = result;
                              },
                              controller: projectController,
                              decoration:
                                  InputDecoration(hintText: ('Select Project')),
                            ),
                          ),
                          IconButton(
                            onPressed: clearTextInput4,
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
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  keyboardType: TextInputType.multiline,
                                  controller: descriptionController,
                                  decoration: InputDecoration(
                                      hintText: ('Describe Expense')),
                                ),
                              ),
                              IconButton(
                                onPressed: clearTextInput7,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey,
                                  size: 16.0,
                                ),
                              )
                            ]),

                        SizedBox(height: 20.0),
                        //amount
                        Text(
                          'Amount',
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
                                  controller: amountController,
                                  keyboardType: TextInputType.number,
                                  decoration:
                                      InputDecoration(hintText: ('0.00')),
                                ),
                              ),
                              IconButton(
                                onPressed: clearTextInput8,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey,
                                  size: 16.0,
                                ),
                              )
                            ]),
                        SizedBox(height: 20),
                        RaisedButton(
                          child: Text(
                            "add item",
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
                          onPressed: () {},
                        ),
                      ])),

              /*  SizedBox(
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
                      ])),*/

              SizedBox(height: 10.0),
              //to set row properties
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
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal)),
                        //text field
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  controller: preparedbyController,
                                  decoration: InputDecoration(
                                      hintText: ('Enter Staff Name')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                onPressed: clearTextInput9,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey,
                                  size: 16.0,
                                ),
                              )
                            ]),

                        SizedBox(height: 20),
                        Text('Approved  By',
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
                                  controller: approvedbyController,
                                  decoration: InputDecoration(
                                      hintText: ('Enter Staff Name')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                onPressed: clearTextInput10,
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.blueGrey,
                                  size: 16.0,
                                ),
                              )
                            ]),

                        SizedBox(height: 20),
                        Text('Received  By',
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
                                  controller: receivedbyController,
                                  decoration: InputDecoration(
                                      hintText: ('Enter Staff Name')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                onPressed: clearTextInput11,
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
                          // splashColor: Colors.grey,
                          // onPressed: getData
                          onPressed: () {
                            return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                    content: Container(
                                        height: 900,
                                        width: 300,
                                        child: ListView(children: <Widget>[
                                          ListTile(
                                            title: Text(
                                              _dateTime.toString(),
                                            ),
                                          ),
                                          ListTile(
                                            title:
                                                Text(merchantController.text),
                                          ),
                                          ListTile(
                                            title: Text(
                                                merchantpinController.text),
                                          ),
                                          ListTile(
                                            title: Text(_radioValue),
                                          ),
                                          ListTile(
                                            title: Text(accountController.text),
                                          ),
                                          ListTile(
                                            title: Text(_chosenValue),
                                          ),
                                          ListTile(
                                            title:
                                                Text(categoryController.text),
                                          ),
                                          ListTile(
                                            title:
                                                Text(customerController.text),
                                          ),
                                          ListTile(
                                            title: Text(projectController.text),
                                          ),
                                          ListTile(
                                            title: Text(
                                                descriptionController.text),
                                          ),
                                          ListTile(
                                            title: Text(amountController.text),
                                          ),
                                          ListTile(
                                            title:
                                                Text(preparedbyController.text),
                                          ),
                                          ListTile(
                                            title:
                                                Text(approvedbyController.text),
                                          ),
                                          ListTile(
                                            title:
                                                Text(receivedbyController.text),
                                          ),
                                        ])));
                              },
                            );
                          },
                        ),
                      ]))
            ])));
  }
}

void _onDropdownChanged(String value) {}

//merchant list
class MerchantList extends StatelessWidget {
  MerchantList({this.onSelect});
  final Function(String) onSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("merchant_${index + 1}"),
          onTap: () {
            print("merchant_${index + 1}");
            Navigator.of(context).pop("merchabt_${index + 1}");
          },
        );
      },
    ));
  }
}

//Account list
class AccountList extends StatelessWidget {
  AccountList({this.onSelect});
  final Function(String) onSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("account_${index + 1}"),
          onTap: () {
            print("account_${index + 1}");
            Navigator.of(context).pop("account_${index + 1}");
          },
        );
      },
    ));
  }
}

//categorieslist
class CategoryList extends StatelessWidget {
  CategoryList({this.onSelect});
  final Function(String) onSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("category_${index + 1}"),
          onTap: () {
            print("category_${index + 1}");
            Navigator.of(context).pop("category_${index + 1}");
          },
        );
      },
    ));
  }
}

//Customer list
class CustomerList extends StatelessWidget {
  CustomerList({this.onSelect});
  final Function(String) onSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("customer_${index + 1}"),
          onTap: () {
            print("customer_${index + 1}");
            Navigator.of(context).pop("customer_${index + 1}");
          },
        );
      },
    ));
  }
}

//project list
class ProjectList extends StatelessWidget {
  ProjectList({this.onSelect});
  final Function(String) onSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("project_${index + 1}"),
          onTap: () {
            print("project_${index + 1}");
            Navigator.of(context).pop("project_${index + 1}");
          },
        );
      },
    ));
  }
}
