import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagramchatbox/hidden_drawer/part_one.dart';
import 'food_card.dart';



void main(){
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> orderItems=[];
  void fellCheck(String item){
    orderItems.add(item);
    print(orderItems);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4ede5),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                  margin: const EdgeInsets.only(left:6),
                  decoration: BoxDecoration(
                      color: Color(0xFFDc26522).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon:Icon(Icons.more_horiz,color: Colors.white,size: 30,)
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(right:30.0,top: 20),
                  child: Text(
                      'DULCHE DE LECHE',style: GoogleFonts.vesperLibre(
                    textStyle: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A),
                    ),
                  )
                  ),
                ),
              ],
            ),
            Container(
              height: 440,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  FoodCard(image: 'assets/cupcake.png',
                    title:'Chocolate Cupcake',
                    description: 'The Soft Tempting Chocolate Cupcake, baked fresh',fellCheck: fellCheck,),
                  FoodCard(image:'assets/cupcake_two.png',
                    title:'Red Velvet Cupcake',
                    description: 'The Soft Tempting Chocolate Cupcake, baked fresh',fellCheck: fellCheck,),
                  FoodCard(image: 'assets/cupcake_sample.png',
                    title:'Fruitty Cupcake',
                    description: 'The Soft Tempting Chocolate Cupcake, baked fresh',fellCheck: fellCheck,),
                ],
              ),
            ),
            Container(
              height: 200,width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(17),bottomRight: Radius.circular(17)),
                color: Color(0xFFDc26522).withOpacity(0.3),
              ),
              child: Center(child: Text("Message By Fahd")),
            )
          ]
        ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        backgroundColor:Color(0xFFDc26522).withOpacity(0.9) ,
        child: Icon(Icons.shopping_cart,),
      ),
    );
  }
}








