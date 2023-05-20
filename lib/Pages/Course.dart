import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ham/modules/FileDownloader.dart';

import '../modules/CDownloader.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);
  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  String dropdownValue = 'Summer Semester';
  String dropdownValue1 = 'MCA';
  late String sname = '';
  late String cname = 'MCA';

  showData() {
    if (sname == 'Winter Semester' && cname == 'MCA') {
      return CFileDownloader();
    } else {
      return Text(
        'No Data Available To Display',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Page View'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CrossAxisAlignment.stretch;
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Semester Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: DropdownButton<String>(
                    // d
                    isExpanded: true,
                    value: dropdownValue,
                    items: <String>[
                      'Summer Semester',
                      'Fall Semester',
                      'Winter Semester'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 16),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                        sname = newValue;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Course',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: DropdownButton<String>(
                    // d
                    isExpanded: true,
                    value: dropdownValue1,
                    items: <String>['MCA', 'B.Tech', 'M.Tech']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 16),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue1 = newValue!;
                        cname = newValue;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            SizedBox(
              child: Container(
                // decoration: BoxDecoration(color: Colors.black12),
                padding: const EdgeInsets.all(16.0),
                child: showData(),
                height: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
