import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Course Page'),
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
                  1: FixedColumnWidth(100),
                  2: FixedColumnWidth(270),
                  3: FixedColumnWidth(80),
                  4: FixedColumnWidth(100),
                  5: FixedColumnWidth(150),
                  6: FixedColumnWidth(100),
                  7: FixedColumnWidth(100),
                },

                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      Center(
                        child: Text(
                          'ClassID',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Course Code',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Course Title',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Room ID',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Exam Date',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Timing',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Semester ID',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Exam Type',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                        child: Text(
                          'BL2022231000810',
                        ),
                      ),
                      Center(
                        child: Text(
                          'MCA1002',
                        ),
                      ),
                      Center(
                        child: Text(
                          'Problem Solving using DSA',
                        ),
                      ),
                      Center(
                        child: Text(
                          'S202',
                        ),
                      ),
                      Center(
                        child: Text(
                          '05-05-2023',
                        ),
                      ),
                      Center(
                        child: Text(
                          '9:15 AM - 12:15 PM',
                        ),
                      ),
                      Center(
                        child: Text(
                          'BL2022231',
                        ),
                      ),
                      Center(
                        child: Text(
                          'TEE',
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                        child: Text(
                          'BL2022231000312',
                        ),
                      ),
                      Center(
                        child: Text(
                          'MCA1012',
                        ),
                      ),
                      Center(
                        child: Text(
                          'Object Oriented Programming',
                        ),
                      ),
                      Center(
                        child: Text(
                          'S201',
                        ),
                      ),
                      Center(
                        child: Text(
                          '6-05-2023',
                        ),
                      ),
                      Center(
                        child: Text(
                          '9:15 AM - 12:15 PM',
                        ),
                      ),
                      Center(
                        child: Text(
                          'BL2022231',
                        ),
                      ),
                      Center(
                        child: Text(
                          'TEE',
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                        child: Text(
                          'BL2022231000694',
                        ),
                      ),
                      Center(
                        child: Text(
                          'MCA1001',
                        ),
                      ),
                      Center(
                        child: Text(
                          'Android Programming',
                        ),
                      ),
                      Center(
                        child: Text(
                          'S203',
                        ),
                      ),
                      Center(
                        child: Text(
                          '7-05-2023',
                        ),
                      ),
                      Center(
                        child: Text(
                          '9:15 AM - 12:15 PM',
                        ),
                      ),
                      Center(
                        child: Text(
                          'BL2022231',
                        ),
                      ),
                      Center(
                        child: Text(
                          'TEE',
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                        child: Text(
                          'BL2022231000231',
                        ),
                      ),
                      Center(
                        child: Text(
                          'MCA1004',
                        ),
                      ),
                      Center(
                        child: Text(
                          'Skills for business communication',
                        ),
                      ),
                      Center(
                        child: Text(
                          'S204',
                        ),
                      ),
                      Center(
                        child: Text(
                          '8-5-2023',
                        ),
                      ),
                      Center(
                        child: Text(
                          '9:15 AM - 12:15 PM',
                        ),
                      ),
                      Center(
                        child: Text(
                          'BL2022231',
                        ),
                      ),
                      Center(
                        child: Text(
                          'TEE',
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                        child: Text(
                          'BL2022231000562',
                        ),
                      ),
                      Center(
                        child: Text(
                          'MCA1005',
                        ),
                      ),
                      Center(
                        child: Text(
                          'Data Mining',
                        ),
                      ),
                      Center(
                        child: Text(
                          'S202',
                        ),
                      ),
                      Center(
                        child: Text(
                          '10-05-2023',
                        ),
                      ),
                      Center(
                        child: Text(
                          '9:15 AM - 12:15 PM',
                        ),
                      ),
                      Center(
                        child: Text(
                          'BL2022231',
                        ),
                      ),
                      Center(
                        child: Text(
                          'TEE',
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                        child: Text(
                          'BL2022231000616',
                        ),
                      ),
                      Center(
                        child: Text(
                          'MCA1006',
                        ),
                      ),
                      Center(
                        child: Text(
                          'Data Networking',
                        ),
                      ),
                      Center(
                        child: Text(
                          'S201',
                        ),
                      ),
                      Center(
                        child: Text(
                          '11-05-2023',
                        ),
                      ),
                      Center(
                        child: Text(
                          '9:15 AM - 12:15 PM',
                        ),
                      ),
                      Center(
                        child: Text(
                          'BL2022231',
                        ),
                      ),
                      Center(
                        child: Text(
                          'TEE',
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                        child: Text(
                          'BL2022231000510',
                        ),
                      ),
                      Center(
                        child: Text(
                          'MCA1007',
                        ),
                      ),
                      Center(
                        child: Text(
                          'Competitive Programming',
                        ),
                      ),
                      Center(
                        child: Text(
                          'S204',
                        ),
                      ),
                      Center(
                        child: Text(
                          '12-05-2023',
                        ),
                      ),
                      Center(
                        child: Text(
                          '9:15 AM - 12:15 PM',
                        ),
                      ),
                      Center(
                        child: Text(
                          'BL2022231',
                        ),
                      ),
                      Center(
                        child: Text(
                          'TEE',
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                        child: Text(
                          'BL2022231000730',
                        ),
                      ),
                      Center(
                        child: Text(
                          'MCA1008',
                        ),
                      ),
                      Center(
                        child: Text(
                          'Web Development',
                        ),
                      ),
                      Center(
                        child: Text(
                          'S203',
                        ),
                      ),
                      Center(
                        child: Text(
                          '13-05-2023',
                        ),
                      ),
                      Center(
                        child: Text(
                          '9:15 AM - 12:15 PM',
                        ),
                      ),
                      Center(
                        child: Text(
                          'BL2022231',
                        ),
                      ),
                      Center(
                        child: Text(
                          'TEE',
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                        child: Text(
                          'BL2022231000180',
                        ),
                      ),
                      Center(
                        child: Text(
                          'MCA1009',
                        ),
                      ),
                      Center(
                        child: Text(
                          'Software Engineering',
                        ),
                      ),
                      Center(
                        child: Text(
                          'S201',
                        ),
                      ),
                      Center(
                        child: Text(
                          '14-05-2023',
                        ),
                      ),
                      Center(
                        child: Text(
                          '9:15 AM - 12:15 PM',
                        ),
                      ),
                      Center(
                        child: Text(
                          'BL2022231',
                        ),
                      ),
                      Center(
                        child: Text(
                          'TEE',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}
