import 'package:flutter/material.dart';

class BosqueElwynnScreen extends StatelessWidget {
  const BosqueElwynnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bosque de Elwynn'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(image: AssetImage('assets/bosque.jpg')),
          Container(
            child: Column(
              children: [
                Text("Afueras de Ventormenta",style:TextStyle(fontSize: 40)),
                
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(70),
            alignment: Alignment.center,
            child: Column(   
              children: [
                Text('Éste es el corazón del Reino humano de Azeroth donde está situada su capital, Ventormenta y a su vez es la zona de inicio de los personajes de raza humana. Elwynn es una gran extensión de fértiles tierras y tupidos bosques. El clima es normalmente soleado y alegre durante el día y silencioso y tranquilo durante la noche. A diferencia del Bosque del Ocaso, Elwynn están bien resguardado pues la gran ciudad de Ventormenta se localiza ahí. Hogar de muchos granjeros, leñadores y mineros, el Bosque de Elwynn es una tranquila región con varios lugares amistosos en donde uno puede detenerse.',style: TextStyle(fontSize: 20),),
                Text('Esta Zona es esencial de visitar en los primeros niveles de la aventura de los jugadores | Niveles 1 - 10 |'),
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
