import 'dart:html';

import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  static String id = 'login_page';
  

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    /*final ButtonStyle estiloboton = ElevatedButton.styleFrom(
      primary: Colors.amber,
      onPrimary: Colors.black,
    );*/
    return SafeArea(
      child: Scaffold(
        /*appBar: AppBar(
          title: Text('YOLO'),
        ),*/
        body: (Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/cr7CI.jpg',
                height: 300,
              ),
              Text(
                'PAPU',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              _userTextField(),
              SizedBox(
                height: 15,
              ),
              _passwordTextField(),
              SizedBox(
                height: 15,
              ),
              _bottonLogin(),
            ],
          ),
        )),
      ),
    );
  }
}

Widget _userTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(Icons.password),
            hintText: 'Correo Electronico',
            labelText: 'Email'),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _passwordTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(Icons.password),
            hintText: 'Contraseña',
            labelText: 'Password'),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _bottonLogin() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
      ),
        onPressed: () {
          Navigator.of(context).pushNamed('/one');
        },
        child: Text('Iniciar Sesion'));
  });
}

/*        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80, ver tical: 15),
          child: Text(
            'Iniciar Sesion',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10))
        elevation: 10,
        Color: Colors.amber,
        onPressed:(){},*/