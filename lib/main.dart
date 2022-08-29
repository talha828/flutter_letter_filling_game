
import 'package:fillingletters/letter_i/letter_i.dart';
import 'package:fillingletters/letter_l/letter_l.dart';
import 'package:fillingletters/letter_o/letter_o.dart';
import 'package:fillingletters/letter_v/letter_v.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LetterO()
        //home: LetterL()
        //home: LetterO()
        // home: LetterV()
    );
  }
}


