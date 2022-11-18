import 'package:dam_c2_cliente/providers/autos_provider.dart';
import "package:flutter/material.dart";
import 'package:dam_c2_cliente/providers/autos_provider.dart';
import 'package:intl/intl.dart';

class EliminarAuto extends StatefulWidget {
  EliminarAuto({Key? key}) : super(key: key);

  @override
  State<EliminarAuto> createState() => _EliminarAutoState();
}

class _EliminarAutoState extends State<EliminarAuto> {
  final formKey = GlobalKey<FormState>();
  AutosProvider provider = new AutosProvider();
  TextEditingController vin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eliminar Auto'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView(
                children: [
                  TextFormField(
                    controller: vin,
                    decoration: InputDecoration(
                        labelText: 'Vin', hintText: 'Escriba el Vin del auto'),
                  ),
                ],
              ),
            )),
            Spacer(),
            Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.all(10),
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                child: Text('Eliminar'),
                onPressed: () => {
                  provider.borrarAuto(vin.text.toString().trim()),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
