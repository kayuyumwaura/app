import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Screen1State();
   }

class Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // cards
            Container(
              height: 120,
              color: Colors.transparent,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // card one
                  Card(
                    child: Column(
                      children: [
                        // 0, No. of reports container
                        Container(
                          height: 70,
                          width: 130,
                          color: Colors.redAccent,
                          child: Stack(
                            children: [
                              // No of reports
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20
                                  ),
                                ),
                              ),
                              // background icon
                            /*  Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.monetization_on,
                                  size: 30,
                                  color: Colors.white12,
                                ),
                              ),*/
                            ],
                          ),
                        ),

                        // card description
                        Expanded(
                          child: Container(
                            width: 120,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "Unreported \nExpenses",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // card two
                  Card(
                    child: Column(
                      children: [
                        // 0, No. of reports container
                        Container(
                          height: 70,
                          width: 130,
                          color: Colors.green,
                          child: Stack(
                            children: [
                              // No of reports
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                  ),
                                ),
                              ),
                              // background icon
                            /*  Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.description,
                                  size: 30,
                                  color: Colors.white12,
                                ),
                              ),*/
                            ],
                          ),
                        ),

                        // card description
                        Expanded(
                          child: Container(
                            width: 110,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "Unsubmmited \nReports",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // card three
                  Card(
                    child: Column(
                      children: [
                        // 0, No. of reports container
                        Container(
                          height: 70,
                          width: 125,
                          color: Colors.orange,
                          child: Stack(
                            children: [
                              // No of reports
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                  ),
                                ),
                              ),
                              // background icon
                            /*  Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.thumb_up,
                                  size: 30,
                                  color: Colors.white12,
                                ),
                              ),*/
                            ],
                          ),
                        ),

                        // card description
                        Expanded(
                          child: Container(
                            width: 110,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "Submmited \nReports",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  
                ],
              ),
            ),

            
            // recent reports
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            // icon
                            Icon(
                              Icons.kitchen,
                              size: 20,
                            ),
                            SizedBox(width: 4,), // space
                            // text
                            Text(
                              'Recent Reports',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),

                        // tailing icon
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.redAccent,
                            size: 11,
                          ),
                        )
                      ],
                    ),
                  ),
                  // body
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    padding: EdgeInsets.all(40),  //space around container. i.e, size of container vs elements inside
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // text
                        Text(
                          'There are no recent Reports',
                          style: TextStyle(
                            fontSize: 16
                          ),
                        ),
                        SizedBox(height: 20,), // between text and button
                        // button
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all( color: Colors.redAccent, width: 1),
                            borderRadius: BorderRadius.circular(17)
                          ),
                          child: Text(
                            "New Report",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Spending overview
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      children: [
                        // icon
                        Icon(
                          Icons.pie_chart_outlined,
                          size: 18,
                        ),
                        SizedBox(width: 4,), // space
                        // text
                        Text(
                          'Spending Overview',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0
                            ),
                        ),
                        SizedBox(width: 6,), // space
                        // period
                        Text(
                          "(Last 6 months)",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  // body
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // text
                        Text(
                          'There are no Expenses spent for last 6 months',
                          style: TextStyle(
                            fontSize: 15
                          ),
                        ),
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



