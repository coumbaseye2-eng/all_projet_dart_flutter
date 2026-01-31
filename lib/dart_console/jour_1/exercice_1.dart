import 'dart:io';

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