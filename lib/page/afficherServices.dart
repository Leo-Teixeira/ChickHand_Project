import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class afficherServices extends StatelessWidget {
  final int userId;

  const afficherServices({Key? key, required this.userId}) : super(key: key);

  Widget build(BuildContext build) {
    return MaterialApp(
      home: afficherServicesPage(idUser: userId),
    );
  }
}

class afficherServicesPage extends StatefulWidget {
  final int idUser;

  const afficherServicesPage({Key? key, required this.idUser})
      : super(key: key);

  afficherServicesPageState createState() => afficherServicesPageState();
}

class afficherServicesPageState extends State<afficherServicesPage> {
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
