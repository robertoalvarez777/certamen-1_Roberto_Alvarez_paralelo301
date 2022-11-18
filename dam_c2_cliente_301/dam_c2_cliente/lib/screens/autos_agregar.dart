import 'package:dam_c2_cliente/providers/autos_provider.dart';
import 'package:flutter/material.dart';
import 'package:dam_c2_cliente/screens/autos_page.dart';
import 'package:http/http.dart' as http;
//import 'package:flutter_application_1/Tabs/tab_agregar.dart';
import 'package:dam_c2_cliente/modelo/autos.dart';

class AutosAgregar extends StatefulWidget {
  AutosAgregar({Key? key}) : super(key: key);

  @override
  State<AutosAgregar> createState() => _AutosAgregarState();
}

class _AutosAgregarState extends State<AutosAgregar> {
  TextEditingController vin = new TextEditingController();
  TextEditingController marca = new TextEditingController();
  TextEditingController modelo = new TextEditingController();
  TextEditingController ano = new TextEditingController();
  TextEditingController precio = new TextEditingController();
  String errVin = '';
  String errMarca = '';
  String errModelo = '';
  String errAno = '';
  String errPrecio = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Auto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: TextField(
                controller: vin,
                decoration: InputDecoration(
                    labelText: 'Vin', hintText: 'Ingreso de Vin'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                errVin,
                style: TextStyle(color: Colors.red),
              ),
            ),
            Container(
              child: TextField(
                controller: marca,
                decoration: InputDecoration(
                    labelText: 'Marca', hintText: 'Ingreso de Marca'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                errMarca,
                style: TextStyle(color: Colors.red),
              ),
            ),
            Container(
              child: TextField(
                controller: modelo,
                decoration: InputDecoration(
                    labelText: 'Modelo', hintText: 'Ingreso de Modelo'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                errModelo,
                style: TextStyle(color: Colors.red),
              ),
            ),
            Container(
              child: TextField(
                controller: ano,
                decoration: InputDecoration(
                    labelText: 'Anio', hintText: 'Ingresar Año de Auto'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                errAno,
                style: TextStyle(color: Colors.red),
              ),
            ),
            Container(
              child: TextField(
                controller: precio,
                decoration: InputDecoration(
                    labelText: 'Precio',
                    hintText: 'Precio del auto'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                errPrecio,
                style: TextStyle(color: Colors.red),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.all(10),
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                child: Text('Agregar Auto'),
                onPressed: () => addAuto(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addAuto() async {
    AutosProvider provider = new AutosProvider();
    var data = await provider.addAuto(vin.value.text, marca.value.text,
        modelo.value.text, int.parse(ano.text), int.parse(precio.value.text));

    if (data == null) {
      Navigator.pop(context);
    } else {
      setState(() {
        if (data['errors']['vin'] == null) {
          errVin = '';
        } else {
          errVin = data['errors']['vin'][0];
        }
        if (data['errors']['marca'] == null) {
          errMarca = '';
        } else {
          errMarca = data['errors']['marca'][0];
        }
        if (data['errors']['modelo'] == null) {
          errModelo = '';
        } else {
          errModelo = data['errors']['modelo'][0];
        }
        if (data['errors']['anio'] == null) {
          errAno = '';
        } else {
          errAno = data['errors']['anio'][0];
        }
        if (data['errors']['precio'] == null) {
          errPrecio = '';
        } else {
          errPrecio = data['errors']['precio'][0];
        }
      });
    }
  }
}