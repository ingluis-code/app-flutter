import 'package:flutter/material.dart';
import 'package:flutter_application_1/Error404.dart';
import 'package:flutter_application_1/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primero Parcial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/login',
      routes: getApplicationRoutes(),
      
      onUnknownRoute: ( RouteSettings settings ){
        return MaterialPageRoute(builder: (BuildContext context) => Error404Page());
      },
    );
  }
}