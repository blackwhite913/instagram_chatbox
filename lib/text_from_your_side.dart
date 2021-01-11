//import 'package:flutter/material.dart';
//import 'package:instagramchatbox/main.dart';


//class UserTextTwo extends StatelessWidget {
//  final List<MessageBox> _messages;
//  UserTextTwo(this._messages);
//  @override
//  Widget build(BuildContext context) {
//    return Container(
////    color: Colors.pinkAccent,
//      child: Column(
//          crossAxisAlignment: CrossAxisAlignment.end,
//          children: _messages.map((message){
//            if(_messages.length==1){
//              return Container(
//                padding: EdgeInsets.all(10),
//                margin: EdgeInsets.only( bottom: 0.5,),
//                height: 50,
//                child: Center(child: Text(message.text,style: TextStyle(color: Colors.white),)),
//                decoration: BoxDecoration(
//                    color: Colors.red,
//                    borderRadius: BorderRadius.all(Radius.circular(25),)
//                ),
//              );
//            }
//            else if(message==_messages.first){
//              return Container(
//                padding: EdgeInsets.all(10),
//                margin: EdgeInsets.only( bottom: 0.5,),
//                height: 50,
//                child: Center(child: Text(message.text,style: TextStyle(color: Colors.white),)),
//                decoration: BoxDecoration(
//                  color: Colors.red,
//                  borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(32),
//                      bottomLeft: Radius.circular(32),
//                      topRight: Radius.circular(22)),
//                ),
//              );
//            }else if(message==_messages.last){
//              return Container(
//                padding: EdgeInsets.all(10),
//                margin: EdgeInsets.only( bottom: 0.5,),
//                height: 50,
//                child: Center(child: Text(message.text,style: TextStyle(color: Colors.white),)),
//                decoration: BoxDecoration(
//                  color: Colors.red,
//                  borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(32),
//                      bottomLeft: Radius.circular(32),
//                      bottomRight: Radius.circular(22)),
//                ),
//              );
//            }else{
//              return Container(
//                padding: EdgeInsets.all(10),
//                margin: EdgeInsets.only( bottom: 0.5,),
//                height: 50,
//                child: Center(child: Text(message.text,style: TextStyle(color: Colors.white),)),
//                decoration: BoxDecoration(
//                  color: Colors.red,
//                  borderRadius: BorderRadius.only(
//                    topLeft: Radius.circular(32),
//                    bottomLeft: Radius.circular(32),),
//                ),
//              );
//            }
//          }).toList()
//      ),
//    );
//  }
//}
