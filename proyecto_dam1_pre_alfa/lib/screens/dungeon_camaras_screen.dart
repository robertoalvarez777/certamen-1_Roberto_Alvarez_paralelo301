import 'package:flutter/material.dart';

class CamarasScreen extends StatelessWidget {
  const CamarasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camaras de Piedra'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(image: AssetImage('assets/stone.jpg')),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(70),
            child: Column(
              children: [
                Text("“Tras abandonar Azeroth, los titanes confiaron en leales protectores para que protegieran la ciudad de Ulduar, una enigmática ciudad asentada en los helados acantilados de las Cumbres Tormentosas. El vigilante Loken fue designado el superior de esos guardianes, pero con el poder de la ciudad de los titanes en sus manos se adentró en la senda del mal, sumergiendo la región en el caos.”",style:TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(50),
            alignment: Alignment.center,
            child: Column(   
              children: [
                Text('Las Cámaras de Piedra es una mazmorra que se localiza en Ulduar al norte de las Cumbres Tormentosas en el continente de Rasganorte. Esta mazmorra forma una especie de enlace junto a las Cámaras de los Relámpagos y a la banda de Ulduar, en la que toda su historia se ve desencadenada por la presencia de un ser maligno. Una de las características de las Cámaras de Piedra y por tanto de las otras estancias, es la profundidad y la altura de las muchas habitaciones que contienen, formando una cultura arquitectónica muy peculiar y característica de la zona. Las habitaciones amplias con haces luces y las paredes talladas con diferentes motivos dorados forman sin duda uno de los atractivos de este grupo de estancias.',style: TextStyle(fontSize: 30),),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Tab(               
                  icon: Icon(Icons.star),
                  child: Text("Recomendaciones"),
                ),
              ],
            ),
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