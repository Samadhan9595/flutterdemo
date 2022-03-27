import 'package:flutter/material.dart';

class Signup extends StatefulWidget{

  @override
  State<Signup> createState() => _Signup();

}

class _Signup extends State<Signup>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        title: Text('Sign Up Page'),
    ),
    body:Form( child: Column(
    children: <Widget>[
      Padding(
          padding:const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'user name',

            ),
          )
      ),
        ],
    ),
    ),
    );
    // TODO: implement build

  }
}