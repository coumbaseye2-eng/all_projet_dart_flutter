import 'dart:io';
//La Puissance manuelle : Demande un nombre  base  et un  exposant . Calcule le
// résultat sans utiliser  pow() , juste avec une boucle  for .

void main(){
  stdout.write("Entrez un nombre de la base : ");
  String? inputNum = stdin.readLineSync()!;
  int? baseNum = int.tryParse(inputNum);

  if (baseNum == null) {
    print("Erreur : Veuillez entrer un nombre entier valide.");
    return;
  }
  stdout.write("Entrez un exposant : ");
  String? inputExpo = stdin.readLineSync()!;
  int exposant = int.parse(inputExpo);

  int result = 1;
  for(int i = 1; i <= exposant; i++ ){
    result = result * baseNum;
  }
  print("$baseNum élevé à la puissance $exposant est égal à : $result ");
}