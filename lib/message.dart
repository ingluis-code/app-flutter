import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

message(BuildContext context, String name) {
  showDialog(
      context: context,
      builder: (_) => AlertDialog(
            title: Text("Mensaje:  "),
            content: Text("Usuario:  " + name),
          ));
}
