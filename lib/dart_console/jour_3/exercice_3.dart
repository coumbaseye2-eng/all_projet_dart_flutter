import 'dart:io';
//FizzBuzz (Classique) : Affiche les nombres de 1 à 100.
// Si multiple de 3 : Affiche "Fizz".
// Si multiple de 5 : Affiche "Buzz".
// Si multiple de 3 et 5 : Affiche "FizzBuzz"

void main(){
  for (int i = 1; i <= 100; i++){
    if (i % 3 == 0 && i % 5 == 0){
      print("$i : FizzBuzz");
    }else if(i % 3 == 0){
      print("$i : Fizz");
    }else if(i % 5 == 0){
      print("$i : Buzz");
    }else {
      print(i);
    }
  }
}