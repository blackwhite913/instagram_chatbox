import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'file:///C:/Users/black/Desktop/android_studio/instagram_chatbox/lib/chef_app/custom_order.dart';


class FoodCard extends StatefulWidget {
  final Function fellCheck;
  final String image;
  final String title;
  final String description;
  const FoodCard({
    this.fellCheck,
    this.image,
    this.title,this.description,
    Key key,
  }) : super(key: key);

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 15,right: 15),
              height: 300.0,
              width: 225.0,
              child: Column(
                children: <Widget>[
                  Stack(
                      children: [
                        Container(
                            height: 335.0
                        ),
                        Positioned(
                            top: 75.0,
                            child: Container(
                                padding: EdgeInsets.only(left: 10.0,right: 10),
                                height: 260.0,
                                width: 225.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Color(0xFFDc26522).withOpacity(0.8)
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 60.0,
                                      ),
                                      SizedBox(height: 10.0),
                                      Text(
                                      widget.title,
                                        style: GoogleFonts.varela(
                                          textStyle: TextStyle(
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        ),
                                      SizedBox(height: 10.0),
                                      Text(
                                        widget.description,
                                        style: GoogleFonts.nunito(
                                          textStyle: TextStyle(
                                              fontFamily: 'nunito',
                                              fontSize: 14.0,
                                              // fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                        ),
                                        ),
                                      SizedBox(height: 15.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '\$50',
                                            style: GoogleFonts.varela(
                                              textStyle: TextStyle(
                                                  fontFamily: 'varela',
                                                  fontSize: 25.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            ),
                                          Container(
                                              height: 40.0,
                                              width: 40.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  color: Colors.white
                                              ),
                                              child: Center(
                                                  child: Icon(Icons.favorite,
                                                      color: Colors.pink,
                                                      size: 15.0
                                                  )
                                              )
                                          )
                                        ],
                                      )
                                    ]
                                )
                            )
                        ),
                        Positioned(
                            left: 60.0,
                            top: 25.0,
                            child: Container(
                                height: 100.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(widget.image),
                                        fit: BoxFit.contain
                                    )
                                )
                            )
                        )
                      ]
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                      child: Container(
                          height: 50.0,
                          width: 225.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color:  Color(0xFFe3686b),
                          ),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(25.0),
                            ),
                            onPressed: (){
                              widget.fellCheck(widget.title,);
                              showModalBottomSheet(context:context, builder:(bContext){
                                return CustomOrder();
                              });
                            },
                              child: Text(
                                  'Order Now',
                                  style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    )
                                  )
                              )
                          )
                      )
                  )
                ],
              )
          );
  }
}