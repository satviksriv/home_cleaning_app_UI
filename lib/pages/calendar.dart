import 'package:flutter/material.dart';
import 'package:home_cleaning_ui/constants/color_scheme.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_left,
              size: 50,
            ),
          ),
          title: Text(
            "Cleaner Calendar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          backgroundColor: bgColor,
          centerTitle: true,
          elevation: 0,
        ),
        body: TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime(1990),
          lastDay: DateTime(2050),
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: TextStyle(color: Colors.white),
            leftChevronIcon: Icon(
              Icons.arrow_left,
              color: Colors.white,
            ),
            leftChevronMargin: EdgeInsets.only(left: 80),
            rightChevronIcon: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            rightChevronMargin: EdgeInsets.only(right: 80),
          ),
          calendarFormat: CalendarFormat.week,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
