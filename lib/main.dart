import 'package:flutter/material.dart';
import 'package:restlogin/pages/login.dart';
import 'package:restlogin/rout/constratnt.dart';
import 'package:restlogin/rout/myroute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: myRoutes.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginPage,
    );
  }
}
