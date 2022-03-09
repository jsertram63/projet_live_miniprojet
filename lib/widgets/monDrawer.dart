// impératif comme import 
import 'package:flutter/material.dart';

/*
  commentaire sur plusieurs lignes

*/

// commentaire sur une ligne

// notre Drawer s'appellera monDrawer 
class monDrawer extends StatelessWidget {
  const monDrawer({ Key? key }) : super(key: key);

  // la fonction nécessaire pour construire un widget Build
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // on lui passe un widget enfant à travers la propriété child
      child: Column(children: const [
        DrawerHeader(child: Text('Hambuger')),
        Text("ingrédients"), 
        Divider(color: Colors.grey,  // widget trait de sépération 
        indent: 20,
        endIndent: 20,
        // epaisseur du trait tickness 
        thickness: 2,),
        Text('happy meal'),
        Divider(color: Colors.grey,  // widget trait de sépération 
        indent: 20,
        endIndent: 20,
        // epaisseur du trait tickness 
        thickness: 2,),
        Text('Sauces'),
        Divider(color: Colors.grey,  // widget trait de sépération 
        indent: 20,
        endIndent: 20,
        // epaisseur du trait tickness 
        thickness: 2,),
        Text('Desserts'),
        Divider(color: Colors.grey,  // widget trait de sépération 
        indent: 20,
        endIndent: 20,
        // epaisseur du trait tickness 
        thickness: 2,),
        Text('Boissons')

      ]),
    );
  }
}