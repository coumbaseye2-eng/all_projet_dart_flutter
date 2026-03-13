import 'dart:io';
//Calculateur de Remise : Déclare un  prix  et un  codePromo .
// Si code = "SOLDES20", applique 20%.
// Si code = "VIP", applique 50%.
// Sinon, affiche "Code invalide" et garde le prix original.

void main(){
  int price = 20000;
  String codePromo = "VIP";

  if(codePromo == "SOLDES20"){
    print("vous avez une reduction de 20% : le montant à payer de ${price -20}fcfa");
  }else if(codePromo == "VIP"){
    print("reduction de 50% dans vos achats: le montant que vous devez payer est de ${price -50}");
  }else {
    print("Code invalide vous payer $price");
  }
}