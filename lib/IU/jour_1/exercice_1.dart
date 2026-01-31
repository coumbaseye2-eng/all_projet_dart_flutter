import 'package:flutter/material.dart';

class EchangPage extends StatefulWidget {
  @override
  _EchangPageState createState() => _EchangPageState();
}

class _EchangPageState extends State<EchangPage> {
  var A = TextEditingController();
  var B = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Échangeur"),
        backgroundColor: Colors.cyan,),
      body: Column(
        children: [
          TextField(controller: A),
          TextField(controller: B),
          ElevatedButton(
            onPressed: () {
              setState(() {
                var memoire = A.text;
                A.text = B.text;
                B.text = memoire;
              });
            },
            child: Text("Echanger"),
          ),
        ],
      ),
    );
  }
}