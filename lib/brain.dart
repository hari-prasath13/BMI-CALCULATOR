import 'package:flutter/material.dart';
import 'dart:math';

class Brain{
   Brain({required this.height,required this.weight});

     final int height;
     final int weight;

   double get _bmi {
     return weight / pow(height / 100, 2);
   }

   String calculateBMI() {
     return _bmi.toStringAsFixed(1);
   }

   String getsuggestion(){
     if(_bmi >=25 ){
       return 'Higher than normal weight';
     }else if(_bmi > 18.5){
       return'You have normal body weight';
     }else{
       return'you have a lower than normal body weight';
     }
   }


   String gettop(){
     if(_bmi >=25 ){
       return 'overweight';
     }else if(_bmi > 18.5){
       return'normal';
     }else{
       return'underweight';
     }
   }




}
