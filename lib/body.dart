

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'interwidget.dart';
import 'newwidget.dart';
import 'constants.dart';
import 'secondpage.dart';
import 'brain.dart';

enum Gender {
  male,
  female,
  noone,
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

Color malecolour = kactivecolor;
Color femalecolour = kactivecolor;



class _BodyState extends State<Body> {
  int height = 180;
  int weight = 60;
  int age =20;

  @override
  Gender selectgender = Gender.male;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
          backgroundColor: Color(0xFF1d1c2e),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectgender = Gender.male;
                      });
                    },
                    child: newwidget(
                      colour: selectgender == Gender.male
                          ? kinactivecolor
                          : kactivecolor,
                      childwidget:
                          interwidget(hey: FontAwesomeIcons.mars, word: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectgender = Gender.female;
                    });
                  },
                  child: newwidget(
                      colour: selectgender == Gender.female
                          ? kinactivecolor
                          : kactivecolor,
                      childwidget: interwidget(
                          hey: FontAwesomeIcons.venus, word: 'FEMALE')),
                )),
              ],
            ),
            Expanded(
                child: newwidget(
              colour: kactivecolor,
              childwidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kedittxt),
                  
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kslidertxtedit,
                        ),
                        Text(
                          'cm',
                          style: kedittxt,
                        ),
                      ]),
                 Slider(value: height.toDouble(),
                   min: 120.0,
                   max: 220.0,
                   activeColor: Color(0xFFEB1555),
                   inactiveColor: Color(0XFF8D8E98),
                   onChanged: (double newvalue){
                   setState(() {
                     height=newvalue.round();
                   });
                   },)

                ],),

              ),
            ),
            Row(
              children: [
                Expanded(
                    child: newwidget(
                  colour: kactivecolor,
                      childwidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('WEIGHT',style: kedittxt,),
                        Text(weight.toString(),style: kslidertxtedit,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          RoundButton(onPressed:(){
                            setState(() {
                              weight--;
                            });
                          }, icon: FontAwesomeIcons.minus,),
                            SizedBox(width: 10,),
                          RoundButton(onPressed:(){
                            setState(() {
                              weight++;
                            });
                          }, icon: FontAwesomeIcons.add,),
                        ],)
                      ],),
                )),


                Expanded(
                    child: newwidget(
                  colour: kactivecolor,
                  childwidget:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('AGE',style: kedittxt,),
                  Text(age.toString(),style: kslidertxtedit,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButton(onPressed:(){
                          setState(() {
                            age--;
                          });
                        }, icon: FontAwesomeIcons.minus,),
                        SizedBox(width: 10,),
                        RoundButton(onPressed:(){
                          setState(() {
                            age++;
                          });
                        }, icon: FontAwesomeIcons.add,),
                      ],)
                  ],) ,
                )),
              ],
            ),
            BottomButton(word: 'CALCULATE',
              onTap:  (){
              setState(() {
                Brain cal = Brain(height: height, weight: weight);
                print(cal.gettop());

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Secondpage(
                    top: cal.gettop(),
                    middle: cal.calculateBMI(),
                    last: cal.getsuggestion(),
                  ),),
                );
              });

              },
             ),
          ],
        ));
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({required this.word, required this.onTap});

  final Function onTap;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function(),
      child: Container(
        child: Center(
          child: Text(
            word,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        color: kbccolor, // example color
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 70,
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton({required this.onPressed, required this.icon});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed as void Function(),
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0XFF4C4F5E),
      child: Icon(icon),
    );
  }
}