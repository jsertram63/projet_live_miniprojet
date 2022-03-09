import 'package:flutter/material.dart';



class FormulaireModel {
  String prenom = "";
  String nom = ""; 
 // <== propriétés mis à jour avec setState (onChange)
  String date = "";
  FormulaireModel({required this.prenom, required this.nom, required this.date});


}