import 'package:flutter/material.dart';
import 'package:restlogin/pages/login.dart';
import 'package:restlogin/pages/signup.dart';
import 'package:restlogin/rout/constratnt.dart';

class myRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginPage:
        return MaterialPageRoute(builder: (context) => Login());
      case SignUp:
        return MaterialPageRoute(builder: (context) => Signup());

      default:
    }

    return MaterialPageRoute(
        builder: (context) => Scaffold(
              body: Text("no route"),
            ));
  }
}
