import 'package:flutter/material.dart';
import 'package:restlogin/rout/constratnt.dart';
import '../component/inputfield.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => _SignupState();
}

GlobalKey<FormState> formkey = GlobalKey<FormState>();

void Validate(){
  if(formkey.currentState!.validate()){
    print("ok");
  }
  else{
    print("error");
  }
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('SignUp'),
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
                    child: Inputfield(name: "email", icon: Icons.email),
                    
                    ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Inputpassfield(
                      name: "password",
                      icon: Icons.lock,
                    )),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        child: Text("Signup"),
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
                            "Already have an account?",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'TiltNeon'),
                          ),
                          TextButton(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontFamily: 'TiltNeon',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.red,
                              ),
                            ),
                            onPressed: () {
                              Validate();
                              Navigator.pushNamed(
                                context,
                                LoginPage,
                              );
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
