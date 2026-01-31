import 'package:flutter/material.dart';
import 'IU/jour_1/exercice_1.dart';
import 'IU/jour_1/exercice_2.dart';
import 'IU/jour_1/exercice_3.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mon Projet sur dart et flutter")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue),
            child: Text("Ouvrir l'Échangeur",
              style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EchangPage()));
            },
          ),
          SizedBox(height: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue),
            child: Text("Calculateur d'Aire",style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AirePage()));
            },
          ),
          SizedBox(height: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue),
            child: Text("Convertisseur de Secondes",
              style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.push(
              context, MaterialPageRoute(builder: (context) => TimePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}