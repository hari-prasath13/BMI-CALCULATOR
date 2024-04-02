import 'package:flutter/material.dart';
import 'body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark(primary: Color(0xFF1d1c2e)),
          scaffoldBackgroundColor:Color(0xFF1d1c2e),

         ),
      home: Body(),
    );
  }
}

