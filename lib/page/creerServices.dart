import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class creerServices extends StatelessWidget {
  final int userId;

  const creerServices({Key? key, required this.userId}) : super(key: key);

  Widget build(BuildContext build) {
    return MaterialApp(
      home: creerServicesPage(idUser: userId),
    );
  }
}

class creerServicesPage extends StatefulWidget {
  final int idUser;

  const creerServicesPage({Key? key, required this.idUser}) : super(key: key);

  creerServicesPageState createState() => creerServicesPageState();
}

class creerServicesPageState extends State<creerServicesPage> {
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
