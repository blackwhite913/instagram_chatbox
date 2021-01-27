import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramchatbox/chef_app/drawer_chef.dart';
import 'package:instagramchatbox/chef_app/main_screen.dart';
import 'package:instagramchatbox/module/data.dart';
import 'package:provider/provider.dart';
import 'drawer_chef.dart';



void main(){
  runApp(MaterialApp(
    home: ChangeNotifierProvider<FoodListProvider>(
      child:HomePage(),
      create: (context)=>FoodListProvider(),
    ),
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








