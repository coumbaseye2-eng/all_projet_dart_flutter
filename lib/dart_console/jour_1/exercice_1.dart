import 'dart:io';
//Déclare deux variables  a = 5  et  b = 10 . Trouve un
// algorithme pour échanger leurs valeurs (pour que  a  devienne 10
// et  b  devienne 5) sans déclarer manuellement  a=10 . Affiche les valeurs avant
// et après.
void main(){
  int a = 5;
  int b = 10;

  print("Avant l'échange ");
  print("a = $a");
  print("b = $b");

  int temp = a;
  a = b;
  b = temp;

  print("Après l'échange ");
  print("a = $a");
  print("b = $b");
}