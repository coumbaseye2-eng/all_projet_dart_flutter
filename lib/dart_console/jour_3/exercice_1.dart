import 'dart:io';
//Factorielle : Demande un nombre $N$. Calcule sa factorielle ($N! = 1 \times 2
// \times ... \times N$) avec une boucle. (Ex: $5! = 120$).
void main() {
  stdout.write("Entrez un nombre pour calculer sa factorielle : ");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Erreur : Saisie vide.");
    return;
  }
  int? number = int.tryParse(input);
  if (number == null) {
    print("Erreur : Veuillez entrer un nombre entier valide.");
    return;
  }
  int result = 1;
  for (int i = 1; i <= number; i++) {
    result = result * i;
  }
  print("Le résultat de $number est : $result");
}