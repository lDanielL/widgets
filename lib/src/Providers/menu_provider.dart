// Al utilizar la palabra "show" se expone solo el objeto del paquete
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


class _MenuProvider {

  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

   Future<List<dynamic>> cargarData() async{

     final resp = await rootBundle.loadString('data/menu_opts.json');

        Map dataMap = json.decode(resp);
        opciones = dataMap['rutas'];


    return opciones;

   }

}

// Este archivo solo esta exponiendo la instancia creada del menú provider
final menuProvider = new _MenuProvider();
