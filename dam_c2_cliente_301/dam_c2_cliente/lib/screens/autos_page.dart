import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import '../providers/autos_provider.dart';


class AutosPage extends StatefulWidget {
  //const MedicamentosPage({super.key});

  @override
  State<AutosPage> createState() => _AutosPageState();
}

class _AutosPageState extends State<AutosPage> {
  var fPrecio = NumberFormat.currency(decimalDigits: 0, locale: 'es-CL', symbol: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Autos'),
        
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.blue,
            child: Row(children: [
              Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
            ]),
          ),
          Expanded(
              child: FutureBuilder(
            future: AutosProvider().getAutos(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.separated(
                separatorBuilder: (_, __) => Divider(),
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  var medicamento = snapshot.data[index];
                  return ListTile(
                    leading: Icon(MdiIcons.pill),
                    title: Text(medicamento['vin']),
                    subtitle:
                        Text('\$ ${fPrecio.format(medicamento['precio'])}'),
                    trailing: Chip(
                      label: Text('stock'),
                      avatar: CircleAvatar(
                      ),
                    ),
                  );
                },
              );
            },
          )),
        ],
      ),
    );
  }


}
