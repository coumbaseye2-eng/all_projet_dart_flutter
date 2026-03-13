import 'package:all_projet_dart_flutter/IU/jour_3/exercice_2.dart';
import 'package:flutter/material.dart';
import 'exercice_2.dart';
import 'exercice_3.dart';
import 'exercice_1.dart';

class ThirdDayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Troisiéme  journée")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          const SizedBox(height: 40),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green),
              child: Text("Exercice_1",
                style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => CalculatorPage()));
              },
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green),
              child: Text("Exercice_2",style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => VisualizerPage()));
              },
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green),
              child: Text("Exercice_3",
                style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FizzBuzzPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}