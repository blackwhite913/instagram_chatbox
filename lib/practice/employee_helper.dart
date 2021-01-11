import 'dart:io';

import 'package:instagramchatbox/practice/employee.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class EmployeeHelper{


  static EmployeeHelper _employeeHelper; /// through out the whole life cycle of the app,only one instance of this class will be created///
  static Database _database;
  String employeeTable = 'employee_table';
  String colId = 'id';
  String colName= 'name';
  String colPhone ='phone';

  EmployeeHelper._createInstance();/// simply used to create an instance , and it is singleton cause it will return the same object everytime ///

  factory EmployeeHelper()  /// the factory keyword allows us to return a value for the constructor
  {
    if(_employeeHelper==null) {
      _employeeHelper = EmployeeHelper._createInstance();
    }
    return _employeeHelper;
  }

  Future<Database> get database async{
    if(_database == null){
      _database =  await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async{ ///the database is opened again and again to access the stored maps///
    Directory directory = await getApplicationDocumentsDirectory();
    String path= directory.path +'employee.db';
    var noteDatabase = await openDatabase(path,version: 1,onCreate: _createDb);
    print('Database was created again men');
    return noteDatabase;
  }

  void _createDb(Database db,int version) async{ ///database is only created once///
    await db.execute('CREATE TABLE $employeeTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colName TEXT,$colPhone TEXT)');
    print('Table was created again');
  }

  /// READ ///
  Future<List<Map<String,dynamic>>> getEmployeeMapList() async{
    Database db = await this.database;
    var result = await db.query(employeeTable); /// query function returns the List of Maps <String,dynamic> ///
    return result;
  }

  Future<List<Employee>> getEmployeeList() async {
    var employeeMapList= await getEmployeeMapList();
    int count= employeeMapList.length;
    List<Employee> employeeList= List<Employee>();
    for(int i=0;i<count;i++){
      employeeList.add(Employee.fromMapObject(employeeMapList[i]));
    }
    return employeeList;
  }

  /// CREATE ///
  Future<int> insertEmployee(Employee employee) async{
    Database db = await this.database;
    var result = await db.insert(employeeTable, employee.toMap());/// note to map is used cause only the database can be inserted by a map ///
    return result;
  }

  /// UPDATE ///
  Future<int> updateEmployee(Employee employee) async{
    Database db = await this.database;
    var result = await db.update(employeeTable, employee.toMap(),where: '$colId = ?',whereArgs: [employee.id]);/// note to map is used cause only the database can be inserted by a map ///
    return result;
  }

  /// DELETE ///
  Future<int> deleteEmployee(int id) async{
    Database db = await this.database;
    var result = await db.delete(employeeTable,where: '$colId=?',whereArgs: [id]);
    return result;
  }
  /// simply count how many data is stored//
  Future<int> getCount() async{
    Database db = await this.database;
    List<Map<String,dynamic>> x =await db.rawQuery('SELECT COUNT (*) from $employeeTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

}