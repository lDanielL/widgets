import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  int  _conteo = 10 ;

  @override
  Widget build(BuildContext context) {
    //Scaffold: https://api.flutter.dev/flutter/material/Scaffold-class.html
        return Scaffold(
          appBar: AppBar(
            title: Text('Título'),
            centerTitle: true,
            elevation: 50.0,
          
          ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,//Alinea verticalmente
                children: <Widget>[
                  Text('Primer Widget  '),
                  Text('Segundo Widget $_conteo', textScaleFactor: 1.5,)
                ],
              )
            ),
          floatingActionButton: _crearBotones(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }

  Widget _crearBotones() {
    return Row(
      //Alinear horizontal
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
            child: Icon(Icons.plus_one),// Íconos: https://material.io/resources/icons/?style=baseline
            
            onPressed: (){

              setState(() {
                _conteo++;
                
              });

            },
            
          ),
          FloatingActionButton(
            child: Icon(Icons.plus_one),// Íconos: https://material.io/resources/icons/?style=baseline
            
            onPressed: (){

              setState(() {
                _conteo++;
                
              });

            },
            
          ),
          FloatingActionButton(
            child: Icon(Icons.plus_one),// Íconos: https://material.io/resources/icons/?style=baseline
            
            onPressed: (){

              setState(() {
                _conteo++;
                
              });

            },
            
          )
      ],
    ) ;
  
  }
}