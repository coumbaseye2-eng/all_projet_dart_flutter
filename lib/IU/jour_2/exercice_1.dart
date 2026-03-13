import 'package:flutter/material.dart';

class CheckYearPage extends StatefulWidget{
  @override
  _CheckYearPageState createState() => _CheckYearPageState();
}

class _CheckYearPageState extends State<CheckYearPage>{
  TextEditingController controller = TextEditingController();
  bool? estBissextile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                    labelText: "Entrez une année"),
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: (){
                setState(() {
                  int? year = int.tryParse(controller.text);
                  if (year != null){
                  estBissextile = (year % 4 == 0 && year % 100 != 0) ||
                      (year % 400 == 0);
                  }
                });
              },
                  child: Text("Vérifier")),
              if (estBissextile != null)...[
                Icon(
                  estBissextile! ? Icons.check_circle : Icons.cancel,
                  color: estBissextile! ? Colors.green : Colors.red,
                  size: 66,
                ),
              Text(
                estBissextile! ? "L'année entrer est bissextile " : "L'année n'est pas bissextile.",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
    ]
            ],
          )
      ),
    );
  }
}