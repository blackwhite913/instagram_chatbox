import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramchatbox/chef_app/drawer_chef.dart';
import 'package:instagramchatbox/chef_app/main_screen.dart';



void main(){
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ChefDrawer(),
          MainScreen(),
        ],
      )
    );
  }
}








