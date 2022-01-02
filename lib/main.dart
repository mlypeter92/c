import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1),
              child: Text(
                'Calendar Timeline',
                style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black87),
              ),
            ),
            CalendarTimeline(
              initialDate: DateTime.now(),
              firstDate: DateTime(2022, 1, 1),
              lastDate: DateTime(2022, 11, 20),
              onDateSelected: (date) => print(date),
              leftMargin: 10,
              monthColor: Colors.black87,
              dayColor: Colors.black87,
              
              activeDayColor: Colors.white60,
              activeBackgroundDayColor: Colors.black54,
              dotsColor: Colors.black87,
              selectableDayPredicate: (date) => date.day != 23,
            ),
          ],
        ),
      ),
    );
  }
}