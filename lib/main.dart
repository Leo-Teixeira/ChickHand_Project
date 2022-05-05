import 'dart:io';
import 'package:flutter/material.dart';
import 'navBar.dart';

//foçnction qui permet le lancement de l'application
void main() {
  runApp(const Login());
}

//class principal qui va permettre de definir les caractéristique de l'application ainsi que de lancer la page principal
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //ce return va permettre de retourner la page
    //flutter fonctionne seulement en widget ce qui veux dire qu'une page correspond a un widget
    return MaterialApp(
      title: "ChickHand",
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //le homme correspond à notre page. on definit dans un premier temps les caractéristique de notre appBar puis ensuite de quoi sera constituer le body
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ChickHand"),
        ),
        body: LoginPage(),
      ),
    );
  }
}

//la classe register correspond a notre body et va servir a nous connecter grace au sip
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String domaine = "mututel.vozit.fr";

  //on definis les different controlleur qui vous nous servir a recuperer la valeur de notre textField
  final etMdp = TextEditingController();
  final etLogin = TextEditingController();

  //widget qui est le corps de cette page ou on va definir nos deux TextField ainsi que le bouton de connexion qui nous redirigera par la suite sur une autre page
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
      return NavBar(userId: 1);
    } else {
      exit(0);
    }
  }
}
