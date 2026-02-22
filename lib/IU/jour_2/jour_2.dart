import 'package:flutter/material.dart';
import 'exercice_1.dart';
import 'exercice_2.dart';
import 'exercice_3.dart';


class SecondDayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Deuxième journée")),
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
                    context, MaterialPageRoute(builder: (context) => CheckYearPage()));
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
                    context, MaterialPageRoute(builder: (context) => PromoPage()));
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
                  context, MaterialPageRoute(builder: (context) => ColorStatePage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}