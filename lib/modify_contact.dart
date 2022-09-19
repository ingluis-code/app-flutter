import 'package:flutter_application_1/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/text_box.dart';

class ModifyContact extends StatefulWidget {
  final Person persona;
  ModifyContact(this.persona);
  @override
  State<StatefulWidget> createState() => _ModifyContact();
}

class _ModifyContact extends State<ModifyContact> {
   TextEditingController controllerName;
  TextEditingController controllerSurname;
  TextEditingController controllerProfession;
  TextEditingController controllerAge;
  TextEditingController controllerImage;
  @override
  void initState() {
    Person person = widget.persona;
    controllerName = new TextEditingController(text: person.name);
    controllerSurname = new TextEditingController(text: person.surname);
    controllerProfession = new TextEditingController(text: person.profession);
    controllerAge = new TextEditingController(text: person.age);
    controllerImage = new TextEditingController(text: person.image);

    super.initState();
  }
//MODIFICAR
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modificar Contacto"),
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
                  Navigator.pop(context,
                      new Person(name: name, surname: surname, profession: profession, age: age,image: image));
                }
              },
              child: Text("Modificar Contacto")),
        ],
      ),
    );
  }
}
