import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class message extends StatelessWidget {
  final int userId;

  const message({Key? key, required this.userId}) : super(key: key);

  Widget build(BuildContext build) {
    return MaterialApp(
      home: messagePage(idUser: userId),
    );
  }
}

class messagePage extends StatefulWidget {
  final int idUser;

  const messagePage({Key? key, required this.idUser}) : super(key: key);

  messagePageState createState() => messagePageState();
}

class messagePageState extends State<messagePage> {
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
