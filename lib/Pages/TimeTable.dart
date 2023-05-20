import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:ham/modules/FileDownloader.dart';
import 'package:ham/modules/DataFetch.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  DateTime selectedValue = DateTime.now();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Time Table')),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: DatePicker(
              DateTime.now(),
              height: 100,
              width: 60,
              initialSelectedDate: DateTime.now(),
              selectionColor: Color.fromARGB(255, 71, 154, 222),
              selectedTextColor: Colors.white,
              onDateChange: (date) {
                setState(() {
                  selectedValue = date;
                  // print(selectedValue.weekday);
                });
              },
            ),
          ),
          Container(
            child: SizedBox(
              child: DataFetch(selectedValue.weekday),
              height: 520,
            ),
          ),
          Container(
            child: SizedBox(
              child: FileDownloader(),
              height: 70,
            ),
          )
        ],
      ),
    );
  }
}
