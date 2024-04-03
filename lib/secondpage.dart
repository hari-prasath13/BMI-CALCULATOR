import 'package:bmi_calculator/newwidget.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'body.dart';

class Secondpage extends StatefulWidget {

  Secondpage({required this.last,required this.top,required this.middle});
  final String top;
  final String middle;
  final String last;
  @override
  State<Secondpage> createState() => _SecondpageState();
}


class _SecondpageState extends State<Secondpage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
        backgroundColor: Color(0xFF1d1c2e),
        ),
       body:Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [

         Text('YOUR RESULT', style:ksecondtop,),

         Expanded(
           flex: 5,
             child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Text( widget.top.toUpperCase() ,style: kresulttxt),
                   Text( widget.middle,style: kbmitxt,) ,
                    Text(widget.last,style: ksecondlast,textAlign: TextAlign.center,),
                  
                ],),
               height: 170,
               margin:EdgeInsets.all(10) ,
               decoration:BoxDecoration(borderRadius:BorderRadius.circular(10),
                   color: kactivecolor,
                 )
                 ),
              ),

           BottomButton(word: 'RE-CALCULATE',
             onTap:  (){  setState(() {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Body()),
               );
             });
             },
           ),

    ],
    ),);





  }
}
