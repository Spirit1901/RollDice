import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
   const StyledText( this.wyjText, {super.key});
  final String wyjText;
  @override
  Widget build(context){
    return  Text(
              wyjText,
               style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            );
}
}

// przed tworzeniem kostki z przyciskiem utworzyłem klasę dla tekstu, użyłem tego do sformatowania tekstu przycisku z dice_roller.dart