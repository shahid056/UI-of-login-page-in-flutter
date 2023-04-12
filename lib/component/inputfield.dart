import 'package:flutter/material.dart';

class Inputfield extends StatefulWidget {
  Inputfield({Key? key, required this.name, required this.icon, this.picon})
      : super(key: key);

  final name;
  final icon;
  final picon;

  @override
  State<Inputfield> createState() => _InputfieldState();
}

class _InputfieldState extends State<Inputfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
       
        child: TextFormField(
          decoration: InputDecoration(
            label: Text(
              widget.name,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            prefixIcon: Icon(
              widget.icon,
              color: Colors.red,
              size: 35,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 228, 79, 9))),
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return "req";
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }
}

class Inputpassfield extends StatefulWidget {
  Inputpassfield({Key? key, required this.name, required this.icon})
      : super(key: key);

  final name;
  final icon;

  @override
  State<Inputpassfield> createState() => _InputpassfieldState();
}

class _InputpassfieldState extends State<Inputpassfield> {
  bool _isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: TextFormField(
          obscureText: _isObsecure,
          decoration: InputDecoration(
            label: Text(
              widget.name,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            prefixIcon: Icon(
              widget.icon,
              color: Colors.red,
              size: 35,
            ),
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isObsecure = !_isObsecure;
                  });
                  print("click");
                },
                icon: Icon(
                  _isObsecure ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                )),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 228, 79, 9))),
          ),
        ),
      ),
    );
  }
}
