import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  var secondesController = TextEditingController();
  var resultat = "0h 0m 0s";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Convertisseur de Temps"),
          backgroundColor: Colors.orange),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: secondesController,
              decoration: InputDecoration(
                  labelText: "Entrez les secondes"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed:() {
                setState(() {
                  var total = int.parse(secondesController.text);
                  var h = total ~/ 3600;
                  var m = (total % 3600) ~/ 60;
                  var s = total % 60;
                  resultat = "${h}h ${m}m ${s}s";
                });
              },
              child: Text("CONVERTIR",style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 32),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.orange.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16)),
              child: Text(resultat, style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold,
                  color: Colors.orange)),
            ),
          ],
        ),
      ),
    );
  }
}