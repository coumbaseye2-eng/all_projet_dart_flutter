import 'dart:io';
//Positif, Négatif ou Nul : Demande un nombre. Affiche s'il est "Strictement
// Positif", "Strictement Négatif" ou "Nul".

void main(){
  stdout.write("Saisir un nombre : ");
  String? input = stdin.readLineSync()!;

  double? number = double.tryParse(input);
  if (number == null) {
    print("Erreur : Veuillez entrer un nombre valide.");
    return;
  }
  if(number > 0){
    print("Le nombre $number est Strictement Positif.");
  }else if(number < 0){
    print("Le nombre $number est Strictement Négatif.");
  }else if(number == 0){
    print("Le nombre $number est Nul.");
  }
}