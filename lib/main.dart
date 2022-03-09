import 'package:flutter/material.dart';
import 'package:flutter_live_projet/widgets/homePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // widdget de base d'une application FLUTTER 
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.red,
      // propriété pour enlever la bannier (false)
      debugShowCheckedModeBanner: false,
       home: HomePage(), /// <====== on passe notre widget HomePage 
    );
  }
}

