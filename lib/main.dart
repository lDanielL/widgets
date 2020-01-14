import 'package:flutter/material.dart';
import 'package:primera_app/src/pages/alert_page.dart';
import 'package:primera_app/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//Indica que debe iniciarr la App
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es', 'ES'),
        const Locale('en', 'US')
      ],
      debugShowCheckedModeBanner: false,
      title: 'Componentes APP',
      initialRoute: '/',
      // home: HomePage()
      routes: obtenerRutas(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
