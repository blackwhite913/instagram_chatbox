import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagramchatbox/module/food.dart';
import 'food_card.dart';


class MainScreen extends StatefulWidget {
  final List<Food> foodList;
  MainScreen(this.foodList);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double xOffset=0;
  double yOffset=0;
  double scaleFactor=1;
  bool isDrawerOpen=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        if(isDrawerOpen==true){
          setState(() {
            isDrawerOpen=!isDrawerOpen;
            xOffset=0;
            yOffset=0;
            scaleFactor=1;
          });
        }
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
            color: Color(0xFFf4ede5),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color:  Color(0xFFDc26522).withOpacity(0.4),
                blurRadius: 20,
                spreadRadius: -4,
                offset: Offset(-15,15),
              ),
              BoxShadow(
                color:  Color(0xFFDc26522).withOpacity(0.4),
                blurRadius: 20,
                spreadRadius: -4,
                offset: Offset(-15,-16),
              )
            ]
        ),
        transform: Matrix4.translationValues(xOffset,yOffset,0)..scale(scaleFactor),
        duration: Duration(milliseconds: 250),
        child:  Column(
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
                          onPressed: (){
                            setState(() {
                              xOffset=180;
                              yOffset=100;
                              scaleFactor=0.8;
                              isDrawerOpen=true;
                            });
                          },
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.foodList.length,
                    itemBuilder: (context,index) {
                      return  FoodCard(foodItem: widget.foodList[index],);
                    })
              ),
              Container(
                height: 200,width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(17),bottomRight: Radius.circular(17)),
                  color: Color(0xFFDc26522).withOpacity(0.3),
                ),
                child: Center(child: Text("Message By Fahd")),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right:10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FloatingActionButton(
                    onPressed: (){},
                    backgroundColor:Color(0xFFDc26522).withOpacity(0.9) ,
                    child: Icon(Icons.shopping_cart,),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}








