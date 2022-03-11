import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class carte extends StatelessWidget {
  final int userId;

  const carte({Key? key, required this.userId}) : super(key: key);

  Widget build(BuildContext build) {
    return MaterialApp(
      home: cartePage(idUser: userId),
    );
  }
}

class cartePage extends StatefulWidget {
  final int idUser;

  const cartePage({Key? key, required this.idUser}) : super(key: key);

  cartePageState createState() => cartePageState();
}

class cartePageState extends State<cartePage> {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        CircleAvatar(child: Icon(Icons.person, size: 50)),
        Text("Leo"),
        Text("Teixeira"),
        Text("teixeiraleo@gmail.com"),
        Text("500"),
        Text("Competence"),
      ],
    ));
  }
}
