import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_home_page.dart';
import 'my_home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _keyForm = GlobalKey<FormState>();

  /* String loginUser = 'usuario';
  String passwordUser = '1234';

  String user = '';
  String password = '';
  String value = '';
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PRIMER PARCIAL'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(children: <Widget>[
          Card(
            margin: EdgeInsets.all(5.0),
            elevation: 4.0,
            child: Container(
              margin: EdgeInsets.all(16.0),
              child: Form(
                key: _keyForm,
                child: Column(
                  children: <Widget>[
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 100.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/usuario.png'),
                        ),
                      ],
                    ),
                    ListTile(
                      title: Text(
                        'INICIAR SESION',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        'Ingrese sus datos',
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Usuario',
                          hintText: 'Escriba su Usuario',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Validar campos vacios';
                        }
                      },
                      // onSaved: (value) => user = value!.replaceAll(' ', ''),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Contraseña',
                          hintText: 'Escriba su Contraseña',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Validar campos vacios';
                        } else {
                          return null;
                        }
                      },
                      //  onSaved: (value) => user = value!,
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          child: Text('Iniciar Sesión',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          color: Colors.red[900],
                          onPressed: () {
                            Navigator.push(
                                context,
                                //MaterialPageRoute(builder: (context) => MyHomePage("Mis Contactos")));
                                // Navigator.of(context)
                                //     .pushReplacementNamed('/home');
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyHomePage("Mis Contactos")));
                            //   builder: (BuildContext context) => MyHomePage()));
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
