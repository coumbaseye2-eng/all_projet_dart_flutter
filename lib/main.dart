import 'package:all_projet_dart_flutter/IU/jour_1/jour_1.dart';
import 'package:all_projet_dart_flutter/IU/jour_2/exercice_1.dart';
import 'package:all_projet_dart_flutter/IU/jour_2/jour_2.dart';
import 'package:flutter/material.dart';

import 'IU/jour_3/jour_3.dart';


void main() {
  runApp(MaterialApp(home: HomePage()));
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mon Projet sur dart et flutter")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange),
            child: Text("Ouvrir Jour_1",
              style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FirstDayPage()));
            },
          ),
          SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan.shade600),
            child: Text("Ouvrir Jour_2",
              style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SecondDayPage()));
            },
          ),
          SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red),
            child: Text("Ouvrir Jour_3",
              style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ThirdDayPage()));
            },
          ),
          ],
      )
    );
  }
}