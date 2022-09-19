import 'package:flutter_application_1/my_home_page.dart';
import 'package:flutter_application_1/text_box.dart';
import 'package:flutter/material.dart';

class RegisterContact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterContact();
}

class _RegisterContact extends State<RegisterContact> {
   TextEditingController controllerName;
  TextEditingController controllerSurname;
  TextEditingController controllerProfession;
  TextEditingController controllerAge;
  TextEditingController controllerImage;
  @override
  void initState() {
    controllerName = new TextEditingController();
    controllerSurname = new TextEditingController();
    controllerProfession = new TextEditingController();
    controllerAge = new TextEditingController();
    controllerImage = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registrar Contactos"),
        ),
        body: ListView(
          children: [
            TextBox(controllerName, "Nombre"),
            TextBox(controllerSurname, "Apellido"),
            TextBox(controllerProfession, "Profesion"),
            TextBox(controllerAge, "Edad"),
            TextBox(controllerImage, "Imagen"),
            ElevatedButton(
                onPressed: () {
                  String name = controllerName.text;
                  String surname = controllerSurname.text;
                  String profession = controllerProfession.text;
                  String age = controllerAge.text;
                  String image = controllerImage.text;
                  if (name.isNotEmpty &&
                      surname.isNotEmpty &&
                      profession.isNotEmpty &&
                      age.isNotEmpty &&
                      image.isNotEmpty) {
                    Navigator.pop(
                        context,
                        new Person(
                            name: name,
                            surname: surname,
                            profession: profession,
                            age: age,
                            image: image));
                  }
                },
                child: Text("Guardar Contacto")),
          ],
        ));
  }
}
