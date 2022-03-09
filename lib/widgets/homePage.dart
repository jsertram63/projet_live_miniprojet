import 'package:flutter/material.dart';
import 'package:flutter_live_projet/widgets/Profile.dart';
import 'package:flutter_live_projet/widgets/formulaire.dart';
import 'package:flutter_live_projet/widgets/lineTextField.dart';
import 'package:flutter_live_projet/widgets/monDrawer.dart';
import 'secondPage.dart';


// widget home (il va gérer l'état car c'est un stateFUllwidget)
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  // variables qui vont être mise à jour lors du remplissage du formulaire
  
  String prenom = "";
  String nom = ""; // <== propriétés mis à jour avec setState (onChange)
  String date = "";
  int _currentIndex = 0;

  final PageController _pageController = PageController(initialPage: 0);

// declaration d'un controller

// définition des ecrans à afficher

final Screens = [
  Formulaire(),
  secondePage(),
  Profile()
];



  bool monEtat = false;
  // initialisation du state
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // pour décharger le controleur quand le widget disparait 
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: monDrawer(),// => il attend un widget Drawer Drawer()
      appBar: AppBar(
      
        title: const Text("Mini Projet"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggle,
        child: const Icon(Icons.access_time_sharp),
      ),
      body:IndexedStack(
        children: Screens,
        index: _currentIndex,
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(_currentIndex);
        },
        items: const <BottomNavigationBarItem>[
          // déclaration des onglets de l'équivalent d'une tabbar sous iOS
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Liste'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  void toggle() {
    if (monEtat == true) {
      setState(() {
        monEtat = false;
      });
    } else {
      setState(() {
        monEtat = true;
      });
    }
  }

  afficheMessage(BuildContext context) {
    final SnackBar snackBar = SnackBar(
        content: const Text("Validation"),
        action: SnackBarAction(
          label: "valider",
          onPressed: () {},
        ));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}


/*

SingleChildScrollView(
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
                      nom = value;
                      print("$nom");
                    });
                  }),
            ),
            LineTextField(
                label: "Prenom",
                onChange: (value) {
                  prenom = value;
                }),
            LineTextField(
                label: "Inscription",
                onChange: (value) {
                  date = value;
                }),
            // UN BOUTON EN BAS DE NOTRE COLOnne
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  // déclaration d'une snackbar pour avoir une barre d'information qui s'affiche en bas de l'écran
                  final SnackBar snackBar = SnackBar(
                      backgroundColor: Colors.blue,
                      content: const Text("Validation"),
                      // définition de l'action quand le message d'information apparait
                      action: SnackBarAction(
                        label: "valider",
                        onPressed: () {},
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
      ),
      */