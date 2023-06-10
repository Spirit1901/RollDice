import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.bottomLeft;
const endAlignment = Alignment.topRight;

class DecorationContainer extends StatelessWidget {
   const DecorationContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
// cd. tu postanowiłem, że zacznę od ustalenia tła aplikacji, padło na gradient który zaczyna się od lewego dołu ekranu i idzie do prawej góry egranu lininka 4,5
// sam gradient zrobiłem poprzez utworzenie widgetu w którym zrobiłem kontener na jego dane lin. 13i14. W kontenerze ustaliłem typ gradientu oraz jego kolory, początek oraz 
// koniec gradientu wyprowadziłem (miejsce gdzie można to ustalić) do main.dart
// wszystko co związane z kostką zapakowałem w klasę i robiłem w osobnym pliku ( dla porządku w projekcie) zapraszam do pliku dice_roller.dart
