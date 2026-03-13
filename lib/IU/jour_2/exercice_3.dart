import 'package:flutter/material.dart';

class ColorStatePage extends StatefulWidget {
  const ColorStatePage({super.key});
  @override
  _ColorStatePageState createState() => _ColorStatePageState();
}
class _ColorStatePageState extends State<ColorStatePage> {
  final TextEditingController _controller = TextEditingController();
  Color _backgroundColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text("Couleur d'état"),
        backgroundColor: Colors.white.withOpacity(0.3),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.numberWithOptions(signed: true),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: "Tapez un nombre",
                hintText: "Ex: -5, 10, 0",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  double? number = double.tryParse(_controller.text);
                  if (number == null || number == 0) {
                    _backgroundColor = Colors.grey;
                  } else if (number < 0) {
                    _backgroundColor = Colors.red.shade400;
                  } else {
                    _backgroundColor = Colors.green.shade400;
                  }
                });
              },
              child: Text("Changer la couleur"),
            ),
            const SizedBox(height: 24),
            Text("changement d'arriére plan aprés la clic",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                  color: _backgroundColor == Colors.grey ? Colors.white : Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}