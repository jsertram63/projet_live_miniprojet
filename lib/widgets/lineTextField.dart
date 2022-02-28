import 'package:flutter/material.dart';

class LineTextField extends StatelessWidget {
  const LineTextField({Key? key,
   required this.label, required this.onChange}) : super(key: key);
    // paramètres à passer au widget lors de sa création 
  final String label;
   final Function(String) onChange; // fonction callBack
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // pour positionner
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: SizedBox(
            child: Text(label),
            height: 35,
            width: 100,
          ),
        ), // accèdde au label du widget construit
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 10),
          child: SizedBox(
            height: 35,
            width: 200,
            child: TextField(
              textAlign: TextAlign.center,
                decoration:  InputDecoration(
                  labelText: label,
                  contentPadding: const EdgeInsets.only(left: 10),
                //  contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 50.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText:"Saisir $label",
                    hintStyle: const TextStyle(fontSize: 14.0,
                    fontWeight: FontWeight.bold
                    )
                    ),
                onChanged: onChange),
              
          ),
        )
      ],
    );
  }
}
