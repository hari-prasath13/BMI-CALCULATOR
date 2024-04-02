import 'package:flutter/material.dart';

class newwidget extends StatelessWidget {
  newwidget({required this.colour,this.childwidget,});

  final Color colour;
  final Widget? childwidget;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: childwidget ?? Container(),
        height: 170,
        margin:EdgeInsets.all(10) ,
        decoration:BoxDecoration(borderRadius:BorderRadius.circular(10),
          color: colour,
        )
    );
  }
}