import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF0f101d),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.orange), // Set the accent color
        brightness: Brightness.light, // Set the brightness (light or dark)
        typography: Typography.material2018(),
      ),
      home:body(),
    );
  }
}

int a =0;
class body extends StatefulWidget {
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI CALCULATOR')),
        backgroundColor: Theme.of(context).primaryColor,
         ),

      body: Center(child: Text('TEXT')),
      backgroundColor: Theme.of(context).primaryColor,
      floatingActionButton:FloatingActionButton(onPressed: () {  },
      child: Icon(Icons.add),),
    );
  }
}





