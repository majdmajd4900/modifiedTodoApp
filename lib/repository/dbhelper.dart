//import 'package:sqflite/sqlite_api.dart';

import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflitee/models/tasks.dart';

class DBHelper{
DBHelper._();
static DBHelper dbHelper = DBHelper._();

static final String dbName = 'tasks.db';
static final String tasksTable = 'tasks';
static final String taskIdColumn = 'id';
static final String titleColumn = 'taskTitle';
static final String isCompletedColumn = 'isCompleted';

//int rowIndex;

Database database;
  Future<Database> initDb() async {
    print('here');
    if (database != null) {
      return database;
    } else {
      database = await connectToDb();
      return database;
    }
  }

Future<Database> connectToDb() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String path = appDocDir.path;
    String db_path = join(path, dbName);
    Database db = await openDatabase(
      db_path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
        create table $tasksTable(
          $taskIdColumn INTEGER PRIMARY KEY AUTOINCREMENT,
          $titleColumn TEXT NOT NULL,
          $isCompletedColumn INTEGER NOT NULL
        )
        ''');
      },
    );
    return db;
  }

  insertNewTask(Tasks tasks) async {
    database = await initDb();
     int rowIndex = await database.insert(tasksTable, tasks.toJson());
    
    print(rowIndex);
  }
getRowCount()async{
  int count = Sqflite.firstIntValue(await database.rawQuery('SELECT COUNT(*) FROM table_name'));
  return count;
}
}