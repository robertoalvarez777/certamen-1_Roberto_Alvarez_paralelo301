import 'package:flutter/material.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeon_camaras_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeon_forja_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeon_foso_screen.dart';


class DungeonsScreen extends StatelessWidget {
  const DungeonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Dungeons"),
        leading: Icon(Icons.list),
      ),
      body: ListView(
        children: [
            /*Divider(
            thickness: 1.5,
            ),
            */
          ListTile(
            leading: Icon(Icons.file_download, color: Colors.deepPurple
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Forja de almas"),
            subtitle: Text("Progresion LvL 80"),
            onTap: (){
              _navegarTo(context, 'Forja');
            },
          ),
          Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.deepPurple),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Foso de Saron"),
            subtitle: Text("Progresion LvL 80"),
            
            onTap: (){
              print("Printing project settings");
              _navegarTo(context, 'Foso');
            },
            
          ),
          Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.deepPurple),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Camaras de reflexion"),
            subtitle: Text("Progresion LvL 80"),
            
            onTap: (){
              print("Printing project users");
              _navegarTo(context, 'camaras');
            },
            
          ),
          Divider(
            thickness: 1.5,
          ),
        ],
      ),





    );
  }

  void _navegarTo(BuildContext context, String screen){
    final route = MaterialPageRoute(builder: (context){
      switch (screen){
        case 'Forja':
          return ForjaScreen();

        case 'Foso': 
          return FosoScreen();

        default:
          return CamarasScreen(); 
      }
    });
    Navigator.push(context, route);
  }


}

