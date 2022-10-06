import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactosScreen extends StatelessWidget {
  const ContactosScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('C1 DAM020-2022-2'),
        centerTitle: true,
        bottom: PreferredSize(
            child: Text("Roberto Alvarez"),
            preferredSize: Size.zero),
      ),
      body: Column(
        children: [
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'Ingrese correo electronico',
              suffixIcon: Icon(MdiIcons.cash)),
          ),
          TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: 'Ingrese su edad',
              suffixIcon: Icon(MdiIcons.cash)),
          ),
          TextField(
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
              labelText: 'Ingrese fecha',
              suffixIcon: Icon(MdiIcons.calendarToday)),
          ),
        ],
        
      ),
    );
  }
}