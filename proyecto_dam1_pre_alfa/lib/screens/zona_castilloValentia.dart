import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CastilloValentiaScreen extends StatelessWidget {
  const CastilloValentiaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fortaleza Denuedo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(image: AssetImage('assets/keep.jpg')),
          Container(
            child: Column(
              children: [
                Text("Zona inicial de Rasganorte para la Alianza",style:TextStyle(fontSize: 40)), 
                Text('Esta Zona es esencial de visitar en los primeros pasos de la aventura de los jugadores en las tierras de Rasganorte | Niveles 70 |'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(100),
            alignment: Alignment.center,
            child: Column(   
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('Es el mayor asentamiento de la Alianza en Tundra Boreal. Está situado al sureste, limitando con el mar, por lo que posee un muelle que da la bienvenida a los jugadores que deciden llegar a Rasganorte desde la ruta que parte del Puerto de Ventormenta.',style:TextStyle(fontSize: 20)),
                ),
                Container(
                  child: Text('Es el cuartel general de la Valiance Expedition — el ejército principal de la Alianza en el continente helado bajo la supervisión personal del Rey Varian Wrynn. El rey, que permanece en Stormwind, ha delegado el mando a sus subordinados de confianza para luchar contra el Rey Exánime: Bolvar Fordragon se encarta del asedio a Angrathar mientras que el General Arlos lidera la Fortaleza Denuedo.',style:TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
          OutlinedButton(               
            //child: Icon(MdiIcons.star)),
            child: Text("Recomendaciones"),
            onPressed: (){
              print('prueba');
            },
          ),
          OutlinedButton(
            child: Text('Volver'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}