import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dam_c2_cliente/modelo/autos.dart';

class AutosProvider {
  final String apiURL = 'http://127.0.0.1:8000/api';

  get SharedPrerefences => null;

  Future<List<dynamic>> getAutos() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    String token = sp.getString('access_token') ?? '';
    var uri = Uri.parse('$apiURL/autos');
    var respuesta =
        await http.get(uri, headers: {'Authorization': 'Bearer $token'});

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else {
      return [];
    }
  }

  Future<Autos?> submitData(
      String vin, String marca, String modelo, int anio, int precio) async {
    const apiURL = 'http://127.0.0.1:8000/dam_c2_api/autos';

    var url = Uri.parse(apiURL);
    var response = await http.post((url), body: {
      'vin': vin,
      'marca': marca,
      'modelo': modelo,
      'anio': anio,
      'precio': precio
    });
    var data = response.body;
    print(data);

    if (response.statusCode == 200) {
      String responseString = response.body;
      autosFromJson(responseString);
    } else {
      return null;
    }
  }

  Future<LinkedHashMap<String, dynamic>?> addAuto(
      String vin, String marca, String modelo, int anio, int precio) async {
    var url = Uri.parse(apiURL);
    var respuesta = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
        },
        body: jsonEncode(<String, dynamic>{
          'vin': vin,
          'marca': marca,
          'modelo': modelo,
          'año': anio,
          'precio': precio
        }));
    if (respuesta.body.isNotEmpty) {
      return jsonDecode(respuesta.body);
    } else {
      return null;
    }
  }

  Future<http.Response> borrarAuto(String vin) async {
    var url = Uri.parse('$apiURL/$vin');
    return await http.delete(url);
  }
}
