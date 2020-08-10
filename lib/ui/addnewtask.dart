import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sqflitee/models/tasks.dart';
import 'package:sqflitee/repository/dbhelper.dart';
class AddingNewTaskPage extends StatefulWidget {
  @override
  _AddingNewTaskPageState createState() => _AddingNewTaskPageState();
}

class _AddingNewTaskPageState extends State<AddingNewTaskPage> {
    TextEditingController titleTextController = new TextEditingController();
    String titleOfTaskFromTextField;


     _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check),
          SizedBox(
            width: 12.0,
          ),
          Text("New Task added Successfully "),
        ],
      ),
    );

    flutterToast.showToast(
      child: toast,
      gravity: ToastGravity.CENTER,
      toastDuration: Duration(seconds: 3),
    );
  }
  FlutterToast flutterToast;

@override
void initState() {
    super.initState();
    flutterToast = FlutterToast(context);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text('adding new task page')),
      body: Center(
        child: Column(
          children: <Widget>[
             TextField(controller: 
          titleTextController,
          ),
        RaisedButton(child: Text('add new task'),
          onPressed: (){
            
           // setState(() {
              titleOfTaskFromTextField= titleTextController.text;
            //});
            Tasks task =Tasks(title:titleOfTaskFromTextField);
            print(task.title);
            print(titleOfTaskFromTextField);
            //DBHelper dbHelper ;
                        print('no error to here');
            print (task);
            

            DBHelper.dbHelper.insertNewTask(task);
            _showToast();
            titleTextController.clear();
            
          })

      
            
          ],
        ),
      ),
      
    );
  }
}