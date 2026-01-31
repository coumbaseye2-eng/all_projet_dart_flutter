import 'dart:io';


void main() {
  const double pi = 3.14;
  double rayon = 10;

  double aire = pi * (rayon * rayon);

  print("Calcul de l'aire du cercle ");
  print("Rayon = $rayon");
  print("Aire = $pi * ($rayon * $rayon)");
  print("L'aire du cercle est egal à : $aire");
}