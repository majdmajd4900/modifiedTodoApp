import 'package:flutter/material.dart';
import 'package:sqflitee/repository/dbhelper.dart';

class Tasks extends ChangeNotifier {
  String title;
  bool isCompleted;
Tasks({this.title,this.isCompleted = false});
Color getStateColor(){
    if(isCompleted){
      return Colors.green;
      
    }else{
      return Colors.red;
    }
  }

  toJson(){
    return {
      DBHelper.titleColumn: title,
      DBHelper.isCompletedColumn : isCompleted? 1 : 0
    };
  }
  
}