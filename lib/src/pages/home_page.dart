import 'package:flutter/material.dart';
import 'package:primera_app/src/Providers/menu_provider.dart';
import 'package:primera_app/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);

    return FutureBuilder(
      future: menuProvider.cargarData(), //Debe estar enlazado a nuestro future
      initialData: [], //Información por defecto, mientras se resuelve el future
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        //permite dibujarlo en el dispostivo, el cual recibe una función

        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];


    //Recorrer una lista
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          
          Navigator.pushNamed(context, opt['ruta']);


          // Ruta simple
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
