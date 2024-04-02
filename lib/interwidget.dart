import 'package:flutter/material.dart';
import 'constants.dart';



class interwidget extends StatelessWidget {
  interwidget({required this.hey, required this.word});
  final IconData hey;
  final String word;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Icon(
            hey,
            size: 80,
          ),
        ),
        SizedBox(height: 8,),
        Text('$word',style: kedittxt),

      ],
    );
  }
}