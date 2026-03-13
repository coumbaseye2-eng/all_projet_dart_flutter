import 'package:flutter/material.dart';

class PromoPage extends StatefulWidget {
  @override
  _PromoPageState createState() => _PromoPageState();
}
class _PromoPageState extends State<PromoPage>{
  TextEditingController _priceController = TextEditingController();
  TextEditingController _promoController = TextEditingController();
  double? _prixFinal;
  String _messageErreur = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Promo")),
      body: Padding(
          padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _priceController,
              decoration: InputDecoration(labelText: "Prix original (FCFA)"),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _promoController,
              decoration: InputDecoration(labelText: "Code Promo"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    double? prixInitial = double.tryParse(_priceController.text);
                    String code = _promoController.text.trim();
                    if (prixInitial == null) {
                      _messageErreur = "Veuillez entrer un prix valide";
                      _prixFinal = null;
                    } else {
                      _messageErreur = "";
                      if (code == "SOLDES20") {
                        _prixFinal = prixInitial * 0.8;
                      } else if (code == "VIP") {
                        _prixFinal = prixInitial * 0.5;
                      } else {
                        _prixFinal = prixInitial;
                        _messageErreur = "Code inconnu";
                      }
                    }
                  });
                },
                child: Text("Remise")
            ),
            if (_prixFinal != null)
              Text(
                "Vous devez payer : ${_prixFinal!.toStringAsFixed(0)} FCFA",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
              ),

            if (_messageErreur.isNotEmpty)
              Text(_messageErreur, style: TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}

