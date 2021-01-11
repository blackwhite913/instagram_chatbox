import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagramchatbox/practice/employee_helper.dart';
import 'package:sqflite/sqlite_api.dart';
import 'employee.dart';


class EmployeeManager extends StatefulWidget {
  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<EmployeeManager> {
  EmployeeHelper employeeHelper = EmployeeHelper();
  List<Employee> employees;
  TextEditingController inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if(employees==null){
      employees=List<Employee>();
      updateListView();
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 200,),
            TextField(
              controller: inputController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Text('Save'),
                    onPressed: () async{
                  final employee= Employee(inputController.text,'99999999999');
                  await employeeHelper.insertEmployee(employee);
                  updateListView();
                }),
              ],
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  itemCount: employees.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        title: Text(employees[index].name),
                        subtitle: Text(employees[index].phone),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () async{
                          await employeeHelper.deleteEmployee(employees[index].id);
                          updateListView();
                        },),
                      ),
                    );
                  }),
            ),
            RaisedButton(
                child: Text('Go to'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return PassingClass();
                  }));
                  updateListView();
                }
                ),
          ],
        ),
        ),
    );
  }
  void updateListView() { ///imp///
    final Future<Database> dbFuture= employeeHelper.initializeDatabase(); ///opens database again and again when required///
    dbFuture.then((database){
      Future<List<Employee>> employeeListFuture = employeeHelper.getEmployeeList();
      employeeListFuture.then((employeeList){
        setState(() {
          this.employees= employeeList;
        });
      });
    });
  }
}

class PassingClass extends StatefulWidget {
  @override
  _PassingClassState createState() => _PassingClassState();
}

class _PassingClassState extends State<PassingClass> {
  EmployeeHelper employeeHelper = EmployeeHelper();
  List<Employee> employees;
  @override
  void initState() {
    Timer.periodic(Duration(minutes: 1),(timer){
      final Future<Database> dbFuture= employeeHelper.initializeDatabase(); ///opens database again and again when required///
      dbFuture.then((database){
        Future<List<Employee>> employeeListFuture = employeeHelper.getEmployeeList();
        employeeListFuture.then((employeeList){
          setState(() {
            this.employees= employeeList;
          });
        });
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing Class'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        height: 500,
        color: Colors.red.shade100,
        child: employees==null?Container(
          child:Center(child: Text('No Info',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        ):Container(
          height: 500,
          child: ListView.builder(
              itemCount: employees.length,
              itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    title: Text(employees[index].name),
                    subtitle: Text(employees[index].phone),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () async{
                        await employeeHelper.deleteEmployee(employees[index].id);
                      },),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

