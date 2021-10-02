import 'package:flutter/material.dart';

class TaskModel {
  DateTime date;
  String name;
  bool isDone = false;

  TaskModel(this.date, this.name, this.isDone);
}