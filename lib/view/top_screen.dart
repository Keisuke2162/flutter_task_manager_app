import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/task_model.dart';
import '../color.dart';
import '../data.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreen createState() => _TopScreen();
}

class _TopScreen extends State<TopScreen> {
  var _currentDate = DateTime.now();
  List<TaskModel> getTaskArray(DateTime date, List<TaskModel> list) {
    var items = list.where((element) => element.date.day == date.day).toList();
    return items;
  }

  @override
  Widget build(BuildContext context) {
    var taskList = getTaskArray(_currentDate, testTaskList);

    final Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Color(0xFF020228),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text("Date Area",
              style: TextStyle(
                color: Colors.white,),
            ),
            SizedBox(height: 16.0,),
            // 日付表示領域
            DatePicker(
                DateTime.now(),
                width: 80,
                height: 88,
                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.blue,
                selectedTextColor: Colors.white,
                monthTextStyle: TextStyle(
                  color: Colors.white,

                ),
                dateTextStyle: TextStyle(
                  color: Colors.yellow,

                ),
                dayTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500
                ),
                onDateChange: (date) {
                  // selected new date
                  setState(() {
                    _currentDate = date;
                  });
                }
            ),
            SizedBox(height: 16),
            // タスク表示領域
            Expanded(
              child: ListView(children: taskList.map((task) {
                return Container(
                  margin: EdgeInsets.all(16.0),
                  height: 72.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF8E7Cf0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Row(
                    children: [
                      Text(
                        task.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

}