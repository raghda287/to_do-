import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(Duration(days: 365)),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.black,
            dayColor: Colors.black,
            activeDayColor: Colors.lightBlue,
            activeBackgroundDayColor: Colors.white,
            dotsColor: Colors.lightBlue,
            selectableDayPredicate: (date) => date.day != 23,
            locale: 'en_ISO',
          )
        ],
      ),
    );
  }
}
