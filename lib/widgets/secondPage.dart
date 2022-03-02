import 'package:flutter/material.dart';

class secondePage extends StatefulWidget {
  const secondePage({ Key? key }) : super(key: key);

  @override
  _secondePageState createState() => _secondePageState();
}

class _secondePageState extends State<secondePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Text("Liste",
      style:TextStyle(
        color: Colors.green
      )
      ),
      
    );
  }
}