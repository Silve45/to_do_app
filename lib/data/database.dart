import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{
  List toDoList = [];

  //refrence the box
  final _myBox = Hive.box("myBox");

  //run this method on first opening of app
  void createInitalData(){
    toDoList = [
      ["default task", false],
      ["fun task :)", false],
    ];
  }

  //load the data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");

  }

  //update database
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);

  }
}