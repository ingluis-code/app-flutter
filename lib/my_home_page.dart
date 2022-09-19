import 'package:flutter_application_1/message.dart';
import 'package:flutter_application_1/modify_contact.dart';
import 'package:flutter_application_1/register_contact.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
 final String _titulo;
 MyHomePage(this._titulo);
  @override
  State<StatefulWidget> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  List<Person> person = [
    Person(
        name: 'Sergio',
        surname: 'Ramos',
        profession: 'Doctor',
        age: "20",
        image:
            "https://www.ngenespanol.com/wp-content/uploads/2018/08/Tu-rostro-es-%C3%BAnico-1280x720.jpg"),
    Person(
        name: 'Samuel',
        surname: 'Perez',
        profession: 'Enfermero',
        age: "20",
        image:
            "https://www.ngenespanol.com/wp-content/uploads/2018/08/Tu-rostro-es-%C3%BAnico-1280x720.jpg"),
    Person(
        name: 'Carlos',
        surname: 'Mendoza',
        profession: 'Doctor',
        age: "20",
        image:
            "https://www.ngenespanol.com/wp-content/uploads/2018/08/Tu-rostro-es-%C3%BAnico-1280x720.jpg"),
    Person(
        name: 'Jhon',
        surname: 'Segura',
        profession: 'Doctor',
        age: "20",
        image:
            "https://www.ngenespanol.com/wp-content/uploads/2018/08/Tu-rostro-es-%C3%BAnico-1280x720.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._titulo),
      ),
      body: ListView.builder(
        itemCount: person.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ModifyContact(person[index])))
                  .then((newContact) {
                if (newContact != null) {
                  setState(() {
                    person.removeAt(index);

                    person.insert(index, newContact);

                    message(context, newContact.name + " a sido modificado");
                  });
                }
              });
            },
            onLongPress: () {
              removeClient(context, person[index]);
            },
            title: Text(person[index].name + " " + person[index].surname),
            subtitle: Text(person[index].profession),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(person[index].image),
            ),
            //trailing: Text(person[index].age),
            trailing: Icon(
              Icons.delete
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (_) => RegisterContact()))
              .then((newContact) {
            if (newContact != null) {
              setState(() {
                person.add(newContact);
                message(context, newContact.name + " a sido guardado");
              });
            }
          });
        },
        tooltip: "Agregar Contacto",
        child: Icon(Icons.add),
      ),
    );
  }

  removeClient(BuildContext context, Person person) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("Eliminar "),
              content: Text("eliminar a " + person.name + "?"),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      this.person.remove(person);
                      Navigator.pop(context);
                    });
                  },
                  child: Text(
                    "Eliminar",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ));
  }
}

class Person {
  var name;
  var surname;
  var profession;
  var age;
  var image;

  Person({this.name, this.surname, this.profession, this.age, this.image});
}
