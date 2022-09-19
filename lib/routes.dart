import 'package:flutter/material.dart';

import 'package:flutter_application_1/login.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
   
    '/login': ( BuildContext context ) => LoginPage()
  };
}