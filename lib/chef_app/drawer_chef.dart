import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:instagramchatbox/module/food.dart';
import 'package:instagramchatbox/module/data.dart';




class ChefDrawer extends StatefulWidget {
  @override
  _ChefDrawerState createState() => _ChefDrawerState();
}

class _ChefDrawerState extends State<ChefDrawer> {
  List<FoodList> innerFoodList =[FoodList(cupcakes,"Cupcakes"),FoodList(cakes,"Cakes"),FoodList(coffee,"Coffees")];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFFDc26522).withOpacity(0.6),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          SizedBox(height: 200,),
          Container(
              padding: const EdgeInsets.only(left:20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...innerFoodList.map((foodName){
                  return GestureDetector(
                    onTap: (){
                     Provider.of<FoodListProvider>(context,listen: false).changer(foodName.foodList);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:8),
                      child: Text(foodName.name,style: GoogleFonts.nunito(textStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 20)),),
                    ),
                  );
                })
              ],
            )
          )
        ],
      ),
    );
  }
}
