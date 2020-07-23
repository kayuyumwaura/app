import 'package:flutter/material.dart';
import 'package:ui/main.dart';
import 'package:ui/ui/main2.dart';
 
  class Screen2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>Screen2State();
  }

  class Screen2State extends State<Screen2>{
  DateTime _dateTime;
  final double _formDistance = 5.0;
  final _currencies = ['KES', 'AED', 'YEN'];
  String _currency = 'KES';
  TextEditingController expenseController = TextEditingController();

  String merchant_name = 'Tuskys';
  final merchants = ['Tuskys', 'LC Waikiki', 'Double Dees', 'Parisland', 'Quickmart'];
  List<String> merchant = ['Tuskys', 'LC Waikiki', 'Double Dees', 'Parisland', 'Quickmart'];

  @override
  Widget build(BuildContext context) {
    TextStyle textstyle = Theme.of(context).textTheme.title;
    return SingleChildScrollView(
      child: Column(
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                // body
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.all(
                      20), //space around container. i.e, size of container vs elements inside
                  child: Column(
                    children: [
                      //Padding(
                         // padding: EdgeInsets.only(
                          //    top: _formDistance, bottom: _formDistance),
                              Text(_dateTime == null ? 'Expense Date*' : _dateTime.toString()),
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
      ),
    );
  }

  }

   void _onDropdownChanged(String value){
    
  }