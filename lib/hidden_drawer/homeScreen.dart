import 'package:flutter/material.dart';

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
          ],
        ),
        color: Colors.grey[200],
      ),
    );
  }
}

