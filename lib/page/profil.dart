import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profil extends StatelessWidget {
  final int userId;

  const profil({Key? key, required this.userId}) : super(key: key);

  Widget build(BuildContext build) {
    return MaterialApp(
      home: profilPage(idUser: userId),
    );
  }
}

class profilPage extends StatefulWidget {
  final int idUser;

  const profilPage({Key? key, required this.idUser}) : super(key: key);

  profilPageState createState() => profilPageState();
}

class profilPageState extends State<profilPage> {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CircleAvatar(
          child: Icon(Icons.person, size: 150),
          radius: 100,
        ),
        Text(
          "Leo",
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        Text(
          "Teixeira",
          textAlign: TextAlign.center,
        ),
        Text(
          "teixeiraleo@gmail.com",
          textAlign: TextAlign.center,
        ),
        Text(
          "500",
          textAlign: TextAlign.center,
        ),
        Text(
          "Competence",
          textAlign: TextAlign.center,
        ),
        Card(
          child: Text(
            "Changer de mot de passe",
            textAlign: TextAlign.center,
          ),
          on
        )
      ],
    ));
  }
}
