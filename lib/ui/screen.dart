import 'package:flutter/cupertino.dart';
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
  var nameHolder = TextEditingController();
  clearTextInput(){
    nameHolder.clear();
  }
  //switch button
  bool isSwitched = false;


  String merchant_name = 'Tuskys';
  final merchants = ['Tuskys', 'LC Waikiki', 'Double Dees', 'Parisland', 'Quickmart'];
  List<String> merchant = ['Tuskys', 'LC Waikiki', 'Double Dees', 'Parisland', 'Quickmart'];

  @override
  Widget build(BuildContext context) {
    TextStyle textstyle = Theme.of(context).textTheme.title;
    return SingleChildScrollView(
      child: Container(
      color: Color.fromRGBO(202, 212, 209, 80.0),
      height: 1000,
      child: Column(      //whole page is a column
        children: <Widget>[
              //row 1
             Container(   //to set row properties
              padding: EdgeInsets.all(30),      //padding for all things in the row
              height: 150,
              color: Colors.white,
              child: Row(     //row 1, Expense Date
                children: <Widget>[
                  //column that has textfield and date input field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,     //makes column items start at the start
                    children: <Widget>[
                      //textfield
                      Text(
                      "Expense Date", 
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Color.fromRGBO(47, 54, 69, 80.0)
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
                                    style: TextStyle(
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
                    ],
                  ),
                
                  Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.turned_in,
                        color: Color.fromRGBO(202, 212, 209, 80.0),
                        size: 130,
                        )
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Attach \nReceipt', 
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          ),
                      )
                    ]
                  )  
                ]
              ),
            ),
            
              SizedBox(height: 10,),

              //row 2
            Container(
              padding: EdgeInsets.all(30),
              height: 200,
              color: Colors.white,
              child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                    'Merchant',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (18),
                      color: Colors.blueGrey
                    ),
                    ),

               new Row(
                 children: <Widget>[
                   new Flexible(
                     child: new TextField(
                       controller: nameHolder,
                       decoration: InputDecoration(
                        hintText: ('Type or Select Merchant')
                      ),
                     ),
                     ),
                     IconButton(
                       //onPressed: () => _controller.clear(),
                       onPressed: clearTextInput,
                       icon: Icon(Icons.clear, color: Colors.blueGrey, size: 18.0,),
                       )]
               ),
              SizedBox(height: 20),
                new Row(
                  children: <Widget>[
                      Text(
                    'Itemize',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (20),
                      color: Colors.blueGrey
                    ),
                    ),
                    //switch button
                     Switch(
                      value: isSwitched, 
                      onChanged: (value){
                        setState(() {
                          isSwitched=value;
                        });
                      },
                      activeTrackColor: Colors.lightBlueAccent,
                      activeColor: Colors.blue,
                      )
                    ]
               )
                     ] 
                     
                     )
                  
                
              
            ),

            //row 3
            SizedBox(height: 10,),
              //row 2
            Container(
              padding: EdgeInsets.all(30),
              height: 200,
              color: Colors.white,
              child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                    'Category',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (18),
                      color: Colors.blueGrey
                    ),
                    ),
              //input field
               new Row(
                 children: <Widget>[
                   new Flexible(
                     child: new TextField(
                       onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CategoriesList()),
              );
            },
                       controller: nameHolder,
                       decoration: InputDecoration(
                        hintText: ('Select Category')
                      ),
                     ),
                     ),
                     IconButton(
                       //onPressed: () => _controller.clear(),
                       onPressed: clearTextInput,
                       icon: Icon(Icons.clear, color: Colors.blueGrey, size: 18.0,),
                       )
                 ]
               ),
              //itemize
                new Row(
                  children: <Widget>[
                      Text(
                    'Itemize',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (20),
                      color: Colors.blueGrey
                    ),
                    ),
                    //switch button
                    ]
               )
               ] 
               )
                  
                
              
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

   void _onDropdownChanged(String value){
    
  }

class CategoriesList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories'
          )
          ),
    body: Card(
      child: 
      ListView(
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
      )
    )
    
    );
  }

}
