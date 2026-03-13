import 'package:flutter/material.dart';

class FizzBuzzPage extends StatefulWidget {
  @override
  _FizzBuzzPageState createState() => _FizzBuzzPageState();
}

class _FizzBuzzPageState extends State<FizzBuzzPage> {
  List<String> results = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FizzBuzz Dynamique")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
              onPressed: () {
                setState(() {
                  results.clear();
                  for (int i = 1; i <= 100; i++) {
                    if (i % 3 == 0 && i % 5 == 0) {
                      results.add("FizzBuzz");
                    } else if (i % 3 == 0) {
                      results.add("Fizz");
                    } else if (i % 5 == 0) {
                      results.add("Buzz");
                    } else {
                      results.add(i.toString());
                    }
                  }
                });
              },
              child: Text("Générer la liste 1-100"),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, index) {
                String val = results[index];
                int number = index + 1;
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor:
                      val.contains("Fizz") ? Colors.orange :
                      (val.contains("Buzz") ? Colors.blue : Colors.grey),
                      child: Text(number.toString(),
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                    ),
                    title: Text(val, style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(
                      val == "FizzBuzz" ? Icons.star :
                      (val == "Fizz" || val == "Buzz" ? Icons.flash_on : Icons.circle_outlined),
                      color: val.contains("Fizz") ? Colors.orange :
                      (val.contains("Buzz") ? Colors.blue : Colors.grey),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}