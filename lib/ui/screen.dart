import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/main.dart';
import 'package:ui/ui/main2.dart';

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
  TextEditingController categoryController = TextEditingController();
  TextEditingController amountController = TextEditingController();
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
//dropdown
  String _chosenValue = 'KES';
  final amounts = ['KES', 'EURO', 'YEN', 'Parisland', 'Quickmart'];
  List<String> merchant = ['KES', 'EURO', 'YEN', 'Parisland', 'Quickmart'];

  @override
  Widget build(BuildContext context) {
    TextStyle textstyle = Theme.of(context).textTheme.title;
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
                            color: Colors.redAccent
                            ),
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
                  height: 200,
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
                        new Row(children: <Widget>[
                          Text(
                            'Itemize',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: (18),
                                color: Colors.blueGrey
                                ),
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
                        ])
                      ])),

              //row 3
              SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.all(30), //row 2 container properties
                  height: 400,
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
                        //input field
                        new Stack(
                            alignment: Alignment.centerRight,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CategoriesList()),
                                    );
                                  },
                                  controller: categoryController,
                                  decoration: InputDecoration(
                                      hintText: ('Select Category')),
                                ),
                              ),
                              IconButton(
                                //onPressed: () => _controller.clear(),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CategoriesList()),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.blueGrey,
                                  size: 16.0,
                                ),
                              )
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
                        new Stack(
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
                          TextField()
                      ])),

                      SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.all(30), //row 2 container properties
                  height: 100,
                  color: Colors.white,
                  child:  Row(
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
                            child: 
                            Switch(
                            value: isSwitched1,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeTrackColor: Colors.redAccent[100],
                            activeColor: Colors.redAccent,
                          )
                          )
                          
                        ])
                  ),

                    SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.all(30), //row 2 container properties
                  height: 130,
                  color: Colors.white,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text(
                      'Reimbursement',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal
                        )
                    ),
                          //text field
                          TextField(
                          )
                        ])
                  ),

                  SizedBox(height: 10.0),
                //to set row properties
                Container(
                  padding: EdgeInsets.all(30), //row 2 container properties
                  height: 130,
                  color: Colors.white,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text(
                      'Add To Report',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal
                        )
                    ),
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
                        ])
                  )

            ]
            )
            )
            );
    /*child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //row 1
            // recent reports
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  
                  // title
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    
                 
                  // body
                child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    padding: EdgeInsets.all(
                        20), //space around container. i.e, size of container vs elements inside
                    child: Column(
                      children: [
                        //Padding(
                           // padding: EdgeInsets.only(
                            //    top: _formDistance, bottom: _formDistance),
                                Text(_dateTime == null ? 'Expense Date' : _dateTime.toString()),
                                RaisedButton(
                                  color: Colors.white,
                                  //border: Border.all( color: Colors.redAccent, width: 1),
                                  //borderRadius: BorderRadius.circular(17),
                                  child: Text(
                                    'Please Select Date',  
                                    style: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: 16
                                    ),
                                  ),
                                  onPressed: () {
                                    showDatePicker(context: context, 
                                    initialDate: DateTime.now(), 
                                    firstDate: DateTime(2000), 
                                    lastDate: DateTime(2030)
                                    ).then((date) {
                                      setState(() {
                                        _dateTime = date;
                                      });
                                    });
                                  },
                                )
                            /*child: TextField(
                              controller: expenseController,
                              decoration: InputDecoration(
                                labelText: 'Expense Date*',
                                hintText: 'Select Date',
                                labelStyle: textstyle,
                              ),
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent, fontSize: 16),
                              keyboardType: TextInputType.datetime,
                            )*/
                          //  )
                      ],
                    ),
                  )
                   ),
                ],
              ),
            ),
            
            //row2
            // Spending overview
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(),
                  ),
                  // body
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 35),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextField(
                              controller: expenseController,
                              decoration: InputDecoration(
                                labelText: 'Merchant',
                                hintText: 'Type or Select Merchant',
                                labelStyle: textstyle,
                                
                              ),
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent, fontSize: 16),
                              keyboardType: TextInputType.text,
                            ),
                        /*DropdownField(
                          onValueChanged: (dynamic value) {
                            merchant_name = value;
                          },
                          value: merchant_name,
                          required: true,
                          hintText: 'Type or Select Merchant',
                          labelText: 'Merchant',
                          items: merchant,
                        )*/
                        DropdownButton<String>(
                items: merchants.map((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value)
                    );
                }).toList(), 
                value: merchant_name,
                onChanged: (String value) {
                  _onDropdownChanged(value);
                }),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //row3
            // category
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(),
                  ),
                  // body
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 35),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: _formDistance, bottom: _formDistance),
                            child: TextField(
                              controller: expenseController,
                              decoration: InputDecoration(
                                labelText: 'Category',
                                hintText: 'Select Category',
                                labelStyle: textstyle,
                              ),
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent, fontSize: 16),
                              keyboardType: TextInputType.text,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),

            //amount
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(),
                  ),
                  // body
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 35),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: _formDistance, bottom: _formDistance),
                            child: TextField(
                              controller: expenseController,
                              decoration: InputDecoration(
                                labelText: 'Amount',
                                labelStyle: textstyle,
                              ),
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent, fontSize: 16),
                              keyboardType: TextInputType.text,
                            )
                            ),
                                DropdownButton<String>(
                items: _currencies.map((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value)
                    );
                }).toList(), 
                value: _currency,
                onChanged: (String value) {
                  _onDropdownChanged(value);
                }),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //tax
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(),
                  ),
                  // body
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 35),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: _formDistance, bottom: _formDistance),
                            child: TextField(
                              controller: expenseController,
                              decoration: InputDecoration(
                                labelText: 'Tax',
                                hintText: 'Type to Select Tax',
                                labelStyle: textstyle,
                              ),
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent, fontSize: 16),
                              keyboardType: TextInputType.text,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),

            //description
              Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(),
                  ),
                  // body
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 35),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: _formDistance, bottom: _formDistance),
                            child: TextField(
                              controller: expenseController,
                              decoration: InputDecoration(
                                labelText: 'Description',
                                hintText: ' ',
                                labelStyle: textstyle,
                              ),
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent, fontSize: 16),
                              keyboardType: TextInputType.text,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ), */
  }
}

void _onDropdownChanged(String value) {}

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Categories')),
        body: Card(
            child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Sun'),
            ),
            ListTile(
              title: Text('Moon'),
            ),
            ListTile(
              title: Text('Star'),
            ),
          ],
        )));
  }
}
