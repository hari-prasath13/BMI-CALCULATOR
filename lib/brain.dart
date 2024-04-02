import 'package:flutter/material.dart';
import 'dart:math';

class Brain{
   Brain({required this.height,required this.weight}):_bmi=0;

     final int height;
     final int weight;

    double _bmi;

  String calculateBMI() {
      _bmi= weight/pow(height/100, 2);
      return _bmi.toStringAsFixed(1);

     }

  String getresult(){
    if(_bmi >=25 ){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return'Normal';
    }else{
      return'Underweight';
    }
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


}
