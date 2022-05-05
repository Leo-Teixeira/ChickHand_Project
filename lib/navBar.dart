import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';
import 'page/profil.dart';
import 'page/afficherServices.dart';
import 'page/carte.dart';
import 'page/creerServices.dart';
import 'page/message.dart';

class NavBar extends StatelessWidget {
  final int userId;

  const NavBar({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBarPage(user: userId),
    );
  }
}

class NavBarPage extends StatefulWidget {
  final int user;

  NavBarPage({Key? key, required this.user}) : super(key: key);

  NavBarPageState createState() => NavBarPageState();
}

class NavBarPageState extends State<NavBarPage> {
  int currentIndex = 0;
  late PageController controllerPage;

  @override
  void initState() {
    super.initState();
    controllerPage = PageController();
  }

  @override
  void dispose() {
    controllerPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChickHand Menu'),
        actions: <Widget>[],
      ),
      //regarder la sizeBox
      body: SizedBox.expand(
        //on definit la page principal ou va se situer le menu
        child: PageView(
          controller: controllerPage,
          onPageChanged: (index) {
            setState(() => currentIndex = index);
          },
          //children va nous permettre de definir tout les onglet que l'on souhaite mettre, en l'occurence 5
          children: <Widget>[
            //on definit ce qui va se passer lorsque l'on va cliquer sur l'onglet à savoir passer a une autre page
            Container(
              child: const message(userId: 1),
            ),
            Container(
              child: const afficherServices(userId: 1),
            ),
            Container(
              child: const creerServices(userId: 1),
            ),
            Container(
              child: carte(userId: 1),
            ),
            Container(
              child: const profil(userId: 1),
            )
          ],
        ),
      ),
      //on definit sur qu'elle onglet on doit arriver lorsque l'on se connecte ainsi que l'action qui doit s'effectuer lorsque l'on change d'onglet
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() => currentIndex = index);
          controllerPage.jumpToPage(index);
        },
        //on definit toutses les caractéristiques de nos onglets
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Message'),
            icon: Icon(Icons.message),
            activeColor: const Color(0xff00adef),
          ),
          BottomNavyBarItem(
            title: Text('Services'),
            icon: Icon(Icons.business_center),
            activeColor: const Color(0xff00adef),
          ),
          BottomNavyBarItem(
            title: Text('Créer Services'),
            icon: Icon(Icons.add_circle_outline),
            activeColor: const Color(0xff00adef),
          ),
          BottomNavyBarItem(
            title: Text('Carte'),
            icon: Icon(Icons.map_outlined),
            activeColor: const Color(0xff00adef),
          ),
          BottomNavyBarItem(
            title: Text('Profil'),
            icon: Icon(Icons.person),
            activeColor: const Color(0xff00adef),
          ),
        ],
      ),
    );
  }
}
