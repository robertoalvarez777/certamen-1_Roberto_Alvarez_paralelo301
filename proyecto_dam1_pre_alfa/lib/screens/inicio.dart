import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proyecto_dam1_pre_alfa/screens/contactos.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeons_screen.dart';


class InicioScreen extends StatefulWidget {
  InicioScreen({Key? key}) : super(key: key);
  @override
  State<InicioScreen> createState() => _InicioScreen();
}

class _InicioScreen extends State<InicioScreen> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    DungeonsScreen(),
    ContactosScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("a Nav")),
      body: _pages[_currentIndex],
      //Center(child: Text("Body Bottom Nav"),),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(MdiIcons.googleEarth), label: 'Ubicaciones'),
            BottomNavigationBarItem(icon: Icon(MdiIcons.contacts), label: 'Usuarios'),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}

