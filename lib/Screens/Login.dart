import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myflutter_form/Screens/SignUp.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formGlobalKey = GlobalKey < FormState > ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body:Form(
        key: formGlobalKey,
        child: Column(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter valid password';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left:255, bottom: 10, right: 10, top:10), //apply padding to some sides only
              child: Text("Forget Password",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.bold
                 // fontWeight: FontWeight.bold,
              ),),
            ),
           /* Align(
              alignment: Alignment.centerRight,
              child: Container(
                child: Text(
                  "Forget Password",
                    style: TextStyle(
                       // color: Colors.grey[800],
                      color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                    )
                ),
              ),
            ),*/

            /*       Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Signup()),
                    );
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
                    // formGlobalKey.currentState!.validate();
                  },
                  child: Text('Forget Password',  textAlign: TextAlign.right),
                )
            ),*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: ElevatedButton(
                  onPressed: (){
                    formGlobalKey.currentState!.validate();
                    },
                  child: Text('LOGIN'),
                )
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>Signup()),
                    );
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
                   // formGlobalKey.currentState!.validate();
                  },
                  child: Text('SIGN UP'),
                )
            ),
          ],
        ),




      )
    );
  }
}

class Screen2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: const Text('Navigate to a new screen on Button click'),
            backgroundColor: Colors.blueAccent),
        body: Center(
          child: FlatButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            onPressed: () {
              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
            },
            child: Text('GO TO HOME'),
          ),
        ),
      );
    }
    // TODO: implement createState
    throw UnimplementedError();
  }

}



