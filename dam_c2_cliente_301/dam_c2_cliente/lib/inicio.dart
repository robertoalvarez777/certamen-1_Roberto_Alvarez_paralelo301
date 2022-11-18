import 'package:flutter/material.dart';

import 'screens/autos_page.dart';
import 'screens/autos_eliminar.dart';
import 'screens/autos_agregar.dart';

class InicioPage extends StatefulWidget {
  //BottomNav({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    AutosPage(),
    AutosAgregar(),
    EliminarAuto(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('C2 Roberto Alvarez')),
      body: _pages[_currentIndex],
      //Center(child: Text('Body bottom nav')),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2_outlined), label: 'Listado'),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_attributes_outlined), label: 'Agregar'), 
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline), label: 'Eliminar'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          //print(index); para ver en consola que funciona
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
