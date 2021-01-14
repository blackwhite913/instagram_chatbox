import 'package:flutter/material.dart';

import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset=0;
  double yOffset=0;
  double scaleFactor=1;
  bool isDrawerOpen=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        if(isDrawerOpen==true){
          print('entered');
          setState(() {
            isDrawerOpen=!isDrawerOpen;
            xOffset=0;
            yOffset=0;
            scaleFactor=1;
          });
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        transform: Matrix4.translationValues(xOffset,yOffset,0)..scale(scaleFactor),
        child: Column(
          children: [
            SizedBox(height: 50,),
             Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.menu), onPressed: (){
                      setState(() {
                        xOffset=180;
                        yOffset=100;
                        scaleFactor=0.8;
                        isDrawerOpen=true;
                      });
                    }),
                    Column(
                      children: [
                        Text('Location'),
                        Row(
                          children: [
                            Icon(Icons.location_on,color: Colors.green,),
                            Text('Ukarine'),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(),
                  ],
                ),
              ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              margin: const EdgeInsets.symmetric(vertical: 30),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.white
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Icon(Icons.search),
                 Text('Search pet to adopt'),
                 Icon(Icons.settings),
               ],
             ),
            ),
            Container(
              height:120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(left:10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80,
                          width: 80,
                          child: Image.asset(categories[index]['iconPath']),
                        ),
                        Text(categories[index]['name']),
                      ],
                    ),
                  );
                },
              )
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: 240,
              child: Row(
                children: [
                  Expanded(child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[300],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: shadowList,
                        ),
                        margin: const EdgeInsets.only(top: 40),
                      ),
                      Align(
                        child: Image.asset('assets/pet-cat2.png'),
                      )
                    ],
                  ),),
                  Expanded(child:Container(
                    margin: const EdgeInsets.only(top: 60,bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: shadowList,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),

                    ),
                  ),)
                ],
              ),
            )
          ],
        ),
        color: Colors.grey[200],
      ),
    );
  }
}

