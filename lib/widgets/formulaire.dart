import 'package:flutter/material.dart';
import 'package:flutter_live_projet/widgets/FomulaireModel.dart';

import 'lineTextField.dart';



class Formulaire extends StatefulWidget {
  const Formulaire({ Key? key }) : super(key: key);

  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  String prenom = "";
  String nom = ""; 
 // <== propriétés mis à jour avec setState (onChange)
  String date = "";
 late  FormulaireModel formulaireModel = FormulaireModel(prenom: "", nom: "", date: "");


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Remplissez ce formulaire',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // style
                    fontSize: 16.0,
                    color: Colors.blue),
              ),
            ),
            Container(
              height: 150,
              width: 150,
              child:const  CircleAvatar(
                backgroundImage:AssetImage("assets/robot.png") 
              )
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LineTextField(
                  label: "Nom",
                  onChange: (value) {
                    setState(() {
                      formulaireModel.nom = value;
                      print(formulaireModel.nom);
                    });
                  }),
            ),
            LineTextField(
                label: "Prenom",
                onChange: (value) {
                  print(value);
                  formulaireModel.prenom = value;
                  print(formulaireModel.prenom);
                }),
            LineTextField(
                label: "Inscription",
                onChange: (value) {
                  formulaireModel.date = value;
                }),
            // UN BOUTON EN BAS DE NOTRE COLOnne
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  
                  // déclaration d'une snackbar pour avoir une barre d'information qui s'affiche en bas de l'écran
                  final SnackBar snackBar = SnackBar(
                      backgroundColor: Colors.blue,
                      content: Text(formulaireModel.nom + " " + formulaireModel.prenom),
                      // définition de l'action quand le message d'information apparait
                      action: SnackBarAction(
                        label: "valider",
                        onPressed: () {
                      
                        },
                      ));
                      // on affiche la snackbar
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                  height: 30,
                  width: 150,
                  child: const Text(
                    "Valider",
                    textAlign: TextAlign.center,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
              ),
            )
          ],
        ),
      );
  }
}