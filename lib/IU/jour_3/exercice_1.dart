import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}
class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController controller = TextEditingController();
  String result = "Entrez un nombre";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculateur Factorielle")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Nombre N",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.calculate),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int? n = int.tryParse(controller.text);
                setState(() {
                  if (n == null || n < 0) {
                    result = "Erreur : Entrez un entier positif";
                  } else {
                    BigInt factorielle = BigInt.from(1);
                    for (int i = 1; i <= n; i++) {
                      factorielle *= BigInt.from(i);
                    }
                    result = "Résultat : $factorielle";
                  }
                });
              },
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
              child: Text("Calculer N"),
            ),
            const SizedBox(height: 32),
            SelectableText(
              result, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}