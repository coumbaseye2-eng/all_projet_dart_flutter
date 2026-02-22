import 'dart:io';
//Déclare une constante  PI = 3.14  et une variable  rayon .
// Calcule l'aire du cercle ($aire = \pi \times rayon^2$) et affiche le résultat.

void main() {
  const double pi = 3.14;
  double rayon = 10;

  double aire = pi * (rayon * rayon);

  print("Calcul de l'aire du cercle ");
  print("Rayon = $rayon");
  print("Aire = $pi * $rayon * $rayon");
  print("L'aire du cercle est egal à : $aire");
}