import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class Faculty extends StatefulWidget {
  const Faculty({super.key});

  @override
  State<Faculty> createState() => _FacultyState();
}

class _FacultyState extends State<Faculty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Faculty List'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Table(
                    border: TableBorder.all(),
                    // defaultColumnWidth: FixedColumnWidth(80),
                    columnWidths: const {
                      0: FixedColumnWidth(130),
                      1: FixedColumnWidth(200),
                      2: FixedColumnWidth(130),
                      3: FixedColumnWidth(150),
                      4: FixedColumnWidth(250),
                    },

                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(children: [
                        Center(
                          child: Text(
                            'Image',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Faculty Name',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Cabin Number',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Designation',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Email',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ],
                      ),
                      TableRow(children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: Colors.blueGrey[400],radius: 30,),
                          )
                        ),
                        Center(
                          child: Text(
                            'Dr. Kanchan Lata Kashyap',
                          ),
                        ),
                        Center(
                          child: Text(
                            '303',
                          ),
                        ),
                        Center(
                          child: Text(
                            'Assistant Professor',
                          ),
                        ),
                        Center(
                          child: Text(
                            'kanchan.k@vitbhopal.ac.in',
                          ),
                        ),
                      ],
                      ),
                      TableRow(children: [
                        Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: Colors.blueGrey[400],radius: 30,),
                            )
                        ),
                        Center(
                          child: Text(
                            'Dr. D. Sarvanan',
                          ),
                        ),
                        Center(
                          child: Text(
                            '502',
                          ),
                        ),
                        Center(
                          child: Text(
                            'Assistant Professor',
                          ),
                        ),
                        Center(
                          child: Text(
                            'd.sarvanan@vitbhopal.ac.in',
                          ),
                        ),
                      ],
                      ),
                      TableRow(children: [
                        Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: Colors.blueGrey[400],radius: 30,),
                            )
                        ),
                        Center(
                          child: Text(
                            'Dr. Prabhu Kanna',
                          ),
                        ),
                        Center(
                          child: Text(
                            '503',
                          ),
                        ),
                        Center(
                          child: Text(
                            'Assistant Professor',
                          ),
                        ),
                        Center(
                          child: Text(
                            'prabhukhanna@vitbhopal.ac.in',
                          ),
                        ),
                      ],
                      ),
                      TableRow(children: [
                        Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: Colors.blueGrey[400],radius: 30,),
                            )
                        ),
                        Center(
                          child: Text(
                            'Dr. Rahul Kumar Chaturvedi',
                          ),
                        ),
                        Center(
                          child: Text(
                            '205',
                          ),
                        ),
                        Center(
                          child: Text(
                            'Assistant Professor',
                          ),
                        ),
                        Center(
                          child: Text(
                            'rahulchaturvedi@vitbhopal.ac.in',
                          ),
                        ),
                      ],
                      ),
                      TableRow(children: [
                        Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: Colors.blueGrey[400],radius: 30,),
                            )
                        ),
                        Center(
                          child: Text(
                            'Dr. Anju Shukla',
                          ),
                        ),
                        Center(
                          child: Text(
                            '404',
                          ),
                        ),
                        Center(
                          child: Text(
                            'Assistant Professor',
                          ),
                        ),
                        Center(
                          child: Text(
                            'anjushukla@vitbhopal.ac.in',
                          ),
                        ),
                      ],
                      ),
                      TableRow(children: [
                        Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: Colors.blueGrey[400],radius: 30,),
                            )
                        ),
                        Center(
                          child: Text(
                            'Dr. Swagat Kumar',
                          ),
                        ),
                        Center(
                          child: Text(
                            '312',
                          ),
                        ),
                        Center(
                          child: Text(
                            'Assistant Professor',
                          ),
                        ),
                        Center(
                          child: Text(
                            'swagatkumar@vitbhopal.ac.in',
                          ),
                        ),
                      ],
                      ),
                    ],
                  ),
                ),
              )
          ),
        )
    );
  }
}