import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
@override
State<DiceRoller> createState (){
  return _DiceRollerState();
}
}

class _DiceRollerState extends State<DiceRoller>{
var activeRollDice = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) +1;
    setState((){
      activeRollDice = 'assets/images/dice-$diceRoll.png';  // $diceRoll wstrzykuje wynik losowania randomowej liczby od 1-

    });
    }
@override
Widget build(context){
return Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            activeRollDice,
            width: 180,
          ),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28),
                  padding: const EdgeInsets.only(top: 40,)),
              child: const Text('Roll Dice'))
        ]);

}
}

// na starcie, wiedząc co w pewnym momencie będę potrzebował (generacji losowej liczby ) zaimportowałem paczkę z darta "math", następnie utworzyłem 2 klasy
// klassa 1 DiceRoller z rozszerzeniem StatefulWidget które jest przeznaczone do działań niestałych (wszelkie zmiany - interakcje z użytkownikiem)
//klasa 2 _DiceRollerState czyli prywatna klasa klasy 1 w której trzymamy dane jak i akcje wyświetlane i wykonywane.
// do generwoania losowej liczby użyliśmy funkcji Random dostarczonej z paczki darta do którego dopisaliśmy +1 aby "włączyć do puli 6 i wyłączyć 0 "
// kostkę ułożyliśmy columnowo (druga opcja liniowo-row) i ustaliliśmy jej wielkośc, pod kostką utworzyłem przycisk do jej rolowania 
//składający się z samego napisu roll dice, skalibrowałem przycisk używając funkcji EdgeInsets od darta, tekst ustawiony klasą z styled_text.dart
