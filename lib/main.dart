import 'dart:io';

import 'package:flutter/material.dart';
import 'navBar.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChickHand',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(title: 'ChickHand'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final etLogin = TextEditingController();
  final etMdp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //le retour se fera sous forme de colonne ce qui va permettre de pouvoir definir plusieurs champs dans le body
    return Column(
      //on definit comment est que l'on souhaite placer nos champs. en l'occurence je veux que horizontalement et verticalement il soit placer au centre
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      //children va nous permettre de definir plusieurs champs dans un seul widget
      children: <Widget>[
        //on commence par definir la taille de notre textField
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          //on créer le textField
          child: TextFormField(
            //on lui affecte son controller
            controller: etLogin,
            //on peut lui mettre des caractéristique commme la bordure ....
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Entrez votre Login',
            ),
          ),
        ),
        //on créer le deuxieme textField pour le mot de passe
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            controller: etMdp,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Entrez votre mot de passe',
            ),
          ),
        ),
        //on créer le bouton qui va nous permettre de se connecter
        ElevatedButton(
            //on definit l'action a effectuer lorsque l'on clique dessus. la on veux qu'il execute une fonction de connexion
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => connexion()));
            },
            child: const Text('Connexion')),
      ],
    );
  }

  //la fonction connexion va permettre de verifier l'identifant et le mot de passe de l'utilisateur afin de le connecter a l'aide du sip au bon serveur
  connexion() {
    if (etLogin.text == "leo" && etMdp.text == "test") {
      return NavBar(
        userId: 1,
      );
    } else {
      exit(0);
    }
  }
}
