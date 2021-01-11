import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'button-maker.dart';

class CustomOrder extends StatefulWidget {
  @override
  _CustomOrderState createState() => _CustomOrderState();
}

class _CustomOrderState extends State<CustomOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFf4ede5).withOpacity(0.4),
      child: ListView(
        physics: BouncingScrollPhysics(),
       children:[
       Padding(
         padding: const EdgeInsets.only(top:23,left: 23,right: 23,bottom: 12),
           child:Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Flexible(
                   flex:6,
                   child:Text(
                       'DULCHE DE LECHE',style: GoogleFonts.vesperLibre(
                     textStyle: TextStyle(
                       fontSize: 17,
                       fontWeight: FontWeight.bold,
                       color: Color(0xFF473D3A),
                     ),
                   )
                   ),),
               Flexible(
                 flex:4,
                 child: Column(
                   children: [
                     Text("Quantity",style: GoogleFonts.nunito(textStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Color(0xFF473D3A))),),
                     SizedBox(height: 6,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         CountButton(),
                         Text('1',style: GoogleFonts.nunito(textStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFF473D3A))),),
                         CountButton2(),
                       ],
                     ),
                   ],
                 ),
               )
             ],
           ),
       ),
         Container(margin:const EdgeInsets.symmetric(horizontal: 20),height: 2,width: double.infinity,color: Color(0xFF473D3A).withOpacity(0.1),),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:30),
           child: Column(
             children: [
               Toppings(),
             ],
           ),
         ),
         Row(
           children: [
             Column(
               children: [
//               Text('Total')
               ],
             )
           ],
         )
       ]
      ),
    );
  }
}




//FlutterOpenWhatsapp.sendSingleMessage("918668973347","${widget.orderItems}\nTotal:50\nTaligao,House no 509 Kamat Rasidence");