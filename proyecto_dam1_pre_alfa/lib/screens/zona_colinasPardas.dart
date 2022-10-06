import 'package:flutter/material.dart';

class ColinasPardasScreen extends StatelessWidget {
  const ColinasPardasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colinas Pardas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(image: AssetImage('assets/colinas.jpg')),
          Container(
            //padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(100),
            child: Column(
              children: [
                Text("Las exuberantes y primitivas montañas de las Colinas Pardas presentan un abrupto contraste con los picos nevados que las separan del Fiordo Aquilonal al sur.",style:TextStyle(fontSize: 40)),
                
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(100),
            alignment: Alignment.center,
            child: Column(   
              children: [
                Text('La zona tiene un aspecto otoñal, sin mucha nieve a pesar de que objetivamente hablando, el invierno dura todo el año. Los árboles son altos y gruesos y el suelo está lleno de agujas de pino que carraspean al pisarlas. El aire limpio produce una sensación agradable que se mezcla con el olor fresco de la tierra recién mojada. Las colinas tienen una elevación importante aunque gradual, lo que hace que se pueda acceder fácilmente sin recurrir a un equipo de escalada. Paisajisticamente hablando, es una de las regiones más bonitas en Rasganorte.',style: TextStyle(fontSize: 20),),
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