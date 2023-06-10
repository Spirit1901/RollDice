import 'package:flutter/material.dart';
import 'package:first_app/decoration_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: DecorationContainer(  Color.fromARGB(255, 71, 17, 163),   Color.fromARGB(255, 31, 4, 78) ),
      ),
    ),
    );
}

// główny plik, gdzie zastosowałem Scaffold czyli wzorzec schematu aplikacji (z głównej strony flutter),
// stworzyłem rdzeń aplikacji 'body' i wszystko co w nim napisałem zawinąłem w klasę DecorationContainer tam należy przejść do kontynuacji opisu aplikacji 
