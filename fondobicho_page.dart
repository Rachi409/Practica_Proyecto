import 'dart:html';

import 'package:flutter/material.dart';

class fondobicho_page extends StatelessWidget {
  const fondobicho_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('el diavlo'),),*/
      body: Stack(
        children: [ImagenFutbol(), Botonn(), Contenido()],
      ),
    );
  }
}

class ImagenFutbol extends StatelessWidget {
  const ImagenFutbol({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.topCenter,
      color: Colors.pink,
      child: Image.network(
          'https://pbs.twimg.com/media/E_B_ye7XMAIzbLL?format=jpg&name=medium',
          fit: BoxFit.fitHeight),
    );
  }
}

class Contenido extends StatelessWidget {
  const Contenido({super.key});

  @override
  Widget build(BuildContext context) {
    final textstyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);

    return SafeArea(
      bottom: false,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '16:45',
              style: textstyle,
            ),
            Text(
              'Marzo 23',
              style: textstyle,
            ),
            Expanded(
                child: Container(
              color: Colors.black38,
            )),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              size: 100,
              color: Colors.black,
            ),
          ]),
    );
  }
}

class Botonn extends StatelessWidget {
  const Botonn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Text('Go Page 2'),
      onPressed: () {
        Navigator.of(context).pushNamed('/two');
      },
    );
  }
}
