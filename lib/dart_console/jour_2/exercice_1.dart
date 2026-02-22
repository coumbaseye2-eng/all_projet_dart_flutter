import 'dart:io';
//Année Bissextile : Demande une année à l'utilisateur. Affiche si elle est
// bissextile ou non. (Règle : divisible par 4, mais pas par 100, sauf si divisible par
// 400).

void main(){
  stdout.write("Saisir une année de votre choix : ");
  String? input = stdin.readLineSync()!;

  int? year = int.tryParse(input);
  if (year == null) {
    print("Erreur : Veuillez entrer une année valide.");
    return;
  }
  bool estbissextile = (year % 4 == 0 && year % 100 !=0) || (year % 400 == 0);

  if(estbissextile){
    print("$year est une année bissextile ");
  }else{
    print("$year n'est pas bissextile ");
  }
}
