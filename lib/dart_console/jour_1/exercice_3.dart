import 'dart:io';

void main() {
  stdout.write("Entrez le nombre de secondes à convertir : ");
  String saisiNbr = stdin.readLineSync()!;
  int totalSecondes = int.parse(saisiNbr);

  int heures = totalSecondes ~/ 3600;
  int resteSecondes = totalSecondes % 3600;
  int minutes = resteSecondes ~/ 60;
  int secondesFinales = resteSecondes % 60;

  print("$heures h : $minutes m : $secondesFinales s");
}