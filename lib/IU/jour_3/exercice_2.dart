import 'package:flutter/material.dart';

class VisualizerPage extends StatefulWidget {
  @override
  _VisualizerPageState createState() => _VisualizerPageState();
}

class _VisualizerPageState extends State<VisualizerPage> {
  final TextEditingController baseController = TextEditingController();
  final TextEditingController expController = TextEditingController();

  String visualize = "Entrez les valeurs";
  String finalResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Visualiseur de Puissance")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: baseController,
                    decoration: InputDecoration(
                        labelText: "Base",
                        border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: expController,
                    decoration: InputDecoration(
                        labelText: "Exposant",
                        border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int? base = int.tryParse(baseController.text);
                int? exp = int.tryParse(expController.text);
                setState(() {
                  if (base == null || exp == null || exp < 0) {
                    visualize = "Erreur : Entrez des entiers valides";
                    finalResult = "";
                  } else if (exp == 0) {
                    visualize = "$base⁰";
                    finalResult = "= 1";
                  } else {
                    int calcul = 1;
                    List<String> steps = [];

                    for (int i = 1; i <= exp; i++) {
                      calcul *= base;
                      steps.add(base.toString());
                    }
                    visualize = steps.join(" x ");
                    finalResult = "= $calcul";
                  }
                });
              },
              child: Text("Visualiser le calcul"),
            ),
            const SizedBox(height: 40),
            Text(visualize, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
            Text(finalResult,style: TextStyle(fontSize: 32,
                  fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}