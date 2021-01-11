import 'package:flutter/material.dart';
import 'package:instagramchatbox/text_from_the_other_side.dart';
import 'package:instagramchatbox/text_from_your_side.dart';

//void main(){
//  runApp(MaterialApp(
//    debugShowCheckedModeBanner: false,
//    title: 'Instagram ChatBox',
//    home:Messaging(),
//  ));
//}



class Messaging extends StatefulWidget {
  @override
  _MessagingState createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
  TextEditingController textController=TextEditingController();
  List<MessageBox> _messages=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:Colors.grey.shade800,
        leading: Icon(Icons.keyboard_backspace,size: 30,),
      ) ,
      body: Container(
        padding: const EdgeInsets.only(top: 9),
//        color: Colors.lime,
        child: ListView(
          children: [
            Container(
//              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
//                  UserTextTwo(_messages),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 4,right: 4,left: 4,bottom: MediaQuery.of(context).viewInsets.bottom+4),
        padding: const EdgeInsets.all(4),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.grey.shade800,
        ),
        height: 50,
        child: Row(
          children: [
            Container(decoration:BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
                child: Center(child: IconButton(icon: Icon(Icons.camera_alt,color: Colors.white,size: 30,), onPressed:(){}))),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 4),
                child: TextField(
                  onSubmitted: (value){
                    setState(() {
                      MessageBox message= MessageBox(value);
                      _messages.add(message);
                    });
                    textController.clear();
                  },
                  controller: textController,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Message...',
                      hintStyle: TextStyle(color: Colors.grey,)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBox{
  final String text;
  MessageBox(this.text);
}


