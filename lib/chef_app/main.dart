import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramchatbox/chef_app/drawer_chef.dart';
import 'package:instagramchatbox/chef_app/main_screen.dart';
import 'package:instagramchatbox/module/data.dart';
import 'package:instagramchatbox/module/food.dart';
import 'drawer_chef.dart';



void main(){
  runApp(MaterialApp(
    home: HomePage(mainScreen: MainScreen(cakes),),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  final Widget mainScreen;
  HomePage({this.mainScreen});
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
          widget.mainScreen,
        ],
      )
    );
  }
}








