import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeon_camaras_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeon_forja_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeon_foso_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/zona_bosqueElwynn.dart';
import 'package:proyecto_dam1_pre_alfa/screens/zona_castilloValentia.dart';
import 'package:proyecto_dam1_pre_alfa/screens/zona_colinasPardas.dart';


class DungeonsScreen extends StatelessWidget {
  const DungeonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(MdiIcons.map, color: Color.fromARGB(255, 246, 245, 248)),
        title: Text('C1 DAM020-2022-2',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        bottom: PreferredSize(
            child: Text("Roberto Alvarez",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            preferredSize: Size.zero),
      ),
      body: ListView(
        children: [
            /*Divider(
            thickness: 1.5,
            ),
            */
          ListTile(
            leading: Icon(MdiIcons.crown, color: Colors.deepPurple),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Forja de almas"),
            subtitle: Text("Corona de Hielo"),
            onTap: (){
              _navegarTo(context, 'Forja');
            },
          ),
          Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(MdiIcons.castle, color: Color.fromARGB(255, 84, 84, 124)
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Fortaleza Denuedo"),
            subtitle: Text("Tundra Boreal"),
            onTap: (){
              _navegarTo(context, 'castillo');
            },
          ),
          Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(MdiIcons.crown, color: Color.fromARGB(255, 105, 21, 241)),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Foso de Saron"),
            subtitle: Text("Corona de Hielo"),
            
            onTap: (){
              print("Printing project settings");
              _navegarTo(context, 'Foso');
            },
            
          ),
          Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(MdiIcons.imageFilterHdr, color: Color.fromARGB(255, 223, 130, 25)),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Colinas Pardas"),
            subtitle: Text("Colinas Pardas"),
            
            onTap: (){
              print("Printing project users");
              _navegarTo(context, 'colinas');
            },
            
          ),
          Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(MdiIcons.imageFilterHdr, color: Color.fromARGB(255, 65, 66, 121)),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Camaras de Piedra"),
            subtitle: Text("Las Cumbres Tormentosas"),
            
            onTap: (){
              print("Printing project users");
              _navegarTo(context, 'camaras');
            },
            
          ),
          Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(MdiIcons.forest, color: Color.fromARGB(255, 60, 177, 37)),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Bosque de Elwynn"),
            subtitle: Text("Reinos del Este"),
            
            onTap: (){
              print("Printing project users");
              _navegarTo(context, 'Bosque');
            },
          ),
        ],
      ),

    );
  }

  void _navegarTo(BuildContext context, String screen){
    final route = MaterialPageRoute(builder: (context){
      switch (screen){
         case 'castillo':
          return CastilloValentiaScreen();

        case 'Forja':
          return ForjaScreen();

        case 'colinas': 
          return ColinasPardasScreen();

        case 'Foso': 
          return FosoScreen();
        
        case 'Bosque':
          return BosqueElwynnScreen();

        default:
          return CamarasScreen(); 
      }
    });
    Navigator.push(context, route);
  }


}

