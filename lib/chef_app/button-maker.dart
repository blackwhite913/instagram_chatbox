import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CountButton extends StatelessWidget {
  const CountButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,height: 40,
      decoration: BoxDecoration(
        color:Color(0xFFf4b4b8),
        shape: BoxShape.circle,
      ),
      child: FlatButton(
        minWidth: 30,
        splashColor: Color(0xFFDc26522).withOpacity(0.1),
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(64)),
        ),
        child: Text("-",style: TextStyle(color: Colors.white,fontSize: 20),),
        onPressed: (){},
      ),
    );
  }
}

class CountButton2 extends StatelessWidget {
  const CountButton2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,height: 40,
      decoration: BoxDecoration(
        color:Color(0xFFf4b4b8),
        shape: BoxShape.circle,
      ),
      child: FlatButton(
        minWidth: 30,
        splashColor: Color(0xFFDc26522).withOpacity(0.1),
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(64)),
        ),
        child: Text("+",style: TextStyle(color: Colors.white,fontSize: 20),),
        onPressed: (){},
      ),
    );
  }
}

class Toppings extends StatefulWidget {
  @override
  _ToppingsState createState() => _ToppingsState();
}

class _ToppingsState extends State<Toppings> {
  String get text{
    if(modeON){
      return 'Egg';
    }
    return 'EggLess';
  }
  String get priceText{
    if(modeON){
      return '+ 5';
    }
    return '0';
  }
  bool modeON=true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20,),
              padding: const EdgeInsets.only(left: 180,),
              height: 70,width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(23)),
                boxShadow: [
                BoxShadow(
                  color:Color(0xFFf4b4b8),
                  offset: Offset(-5,5),
                  blurRadius: 6,
                  spreadRadius: -5
                )
              ],
                color: Color(0xFFf4b4b8),
              ),
              child:  Switch(
                  activeColor:Colors.white,
                  value: modeON, onChanged:(val){setState(() {
                modeON=val;
              });}),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20,),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(23)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color:Color(0xFFf4b4b8).withOpacity(0.6),
                              shape: BoxShape.circle
                          ),
                          height: 50,width: 50,
                          child: Image.asset("assets/egg.png")
                      ),
                      Text(text,style: GoogleFonts.varelaRound(textStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFf4b4b8)))),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        Text(priceText,style: GoogleFonts.varelaRound(textStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFF473D3A)))),
      ],
    );
  }
}
