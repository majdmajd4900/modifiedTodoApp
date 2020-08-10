import 'package:flutter/material.dart';
import 'package:sqflitee/models/tasks.dart';
import 'package:sqflitee/repository/dbhelper.dart';
import 'package:sqflitee/ui/addnewtask.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TextEditingController ageTextController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(title:Text('Sql lite application'),bottom:TabBar(controller: tabController,
            tabs: [
              Tab(text: 'All Tasks',),
              Tab(text: 'Completed Tasks',),
              Tab(text: 'Not Completed Tasks',)
            ])
            ,),
      body: Column(
        children: <Widget>[
         
      ],
      
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).pushNamed('/adding-new-task-page');
      },),

    
      
    );
    return scaffold;
  }
}