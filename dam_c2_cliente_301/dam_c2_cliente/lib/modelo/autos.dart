import 'dart:convert';

Autos autosFromJson(String str) => Autos.fromJson(json.decode(str));

String autosToJson(Autos data) => json.encode(data.toJson());

class Autos {
  Autos({
    this.vin,
    this.marca,
    this.modelo,
    this.anio,
    this.precio,
  });

  String? vin;
  String? marca;
  String? modelo;
  String? anio;
  String? precio;

  factory Autos.fromJson(Map<String, dynamic> json) => Autos(
        vin: json["vin"],
        marca: json["marca"],
        modelo: json["modelo"],
        anio: json["anio"],
        precio: json["precio"],
      );

  Map<String, dynamic> toJson() => {
        "vin": vin,
        "marca": marca,
        "modelo": modelo,
        "anio": anio,
        "precio": precio,
      }; 
}