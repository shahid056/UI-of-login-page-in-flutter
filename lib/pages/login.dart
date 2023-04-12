import 'package:flutter/material.dart';
import '../component/inputfield.dart';
import '../rout/constratnt.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
          color: Color.fromARGB(255, 97, 171, 232),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset('assest/Logo.png'),
                Text(
                  "Foodit",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontFamily: 'TiltNeon',
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Inputfield(name: "email", icon: Icons.email)),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Inputpassfield(
                      name: "Password",
                      icon: Icons.password_rounded,
                    )),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        child: Text("Login"),
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        )),
                  ),
                ),
                Center(
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "don't have an account?",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'TiltNeon'),
                          ),
                          TextButton(
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                fontFamily: 'TiltNeon',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.red,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                SignUp,
                              );
                              Duration(microseconds: 1);
                            },
                          ),
                        ],
                      )),
                )
              ],
            ),
          )),
    );
  }
}
