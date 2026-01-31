import 'package:flutter/material.dart';

class AirePage extends StatefulWidget {
  @override
  _AirePageState createState() => _AirePageState();
}
class _AirePageState extends State<AirePage> {
  var rayonController = TextEditingController();
  var resultat = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calcul d'Aire")),
      body: Column(
        children: [
          TextField(
            controller: rayonController,
            decoration: InputDecoration(labelText: "Entrez le rayon"),
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  var r = double.parse(rayonController.text);
                  var aire = 3.14 * (r * r);
                  resultat = "L'aire du cercle est de : $aire";
                });
              },
              child: Text("Calculer")
          ),
          SizedBox(height: 20),
          Text(resultat, style: TextStyle(fontSize: 20)
          ),
        ],
      ),
    );
  }
}