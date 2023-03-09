import 'package:flutter/material.dart';

class menu_page extends StatelessWidget {
  const menu_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(1000, 247, 49, 5),
          centerTitle: true,
          title: Text('BIENVENIDO'),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //cuadro1(),
                  Expanded(
                    child: Container(
                      height: 500,
                      padding: EdgeInsets.all(5),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              primary: Color.fromARGB(1000, 247, 75, 38)),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/two');
                          },
                          child: Text('PAGE 4')),
                    ),
                  ),
                  //cuadro2()
                  Expanded(
                    child: Container(
                      height: 500,
                      padding: EdgeInsets.all(5),
                      color: Colors.transparent,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              primary: Color.fromARGB(1000, 247, 75, 38)),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/three');
                          },
                          child: Text('PAGE 3')),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //cuadro3(),
                  Expanded(
                    child: Container(
                      height: 500,
                      padding: EdgeInsets.all(5),
                      color: Colors.transparent,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              primary: Color.fromARGB(1000, 247, 75, 38)),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/two');
                          },
                          child: Text('PAGE 2')),
                    ),
                  ),
                  //cuadro4()
                  Expanded(
                    child: Container(
                      height: 500,
                      padding: EdgeInsets.all(5),
                      color: Colors.transparent,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 100,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              primary: Color.fromARGB(1000, 247, 75, 38)),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/four');
                          },
                          child: Text('PAGE 1')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

class cuadro1 extends StatelessWidget {
  const cuadro1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 300,
      width: 300,
      color: Colors.transparent,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              primary: Colors.pink),
          onPressed: () {
            Navigator.of(context).pushNamed('/two');
          },
          child: Text('PAGE 4')),
    );
  }
}

class cuadro2 extends StatelessWidget {
  const cuadro2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 300,
      width: 300,
      color: Colors.transparent,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              primary: Colors.black),
          onPressed: () {
            Navigator.of(context).pushNamed('/three');
          },
          child: Text('PAGE 3')),
    );
  }
}

class cuadro3 extends StatelessWidget {
  const cuadro3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 300,
      width: 300,
      color: Colors.transparent,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              primary: Colors.indigo),
          onPressed: () {
            Navigator.of(context).pop('/one');
          },
          child: Text('PAGE 2')),
    );
  }
}

class cuadro4 extends StatelessWidget {
  const cuadro4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 300,
      width: 300,
      color: Colors.transparent,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              primary: Colors.amber),
          onPressed: () {
            Navigator.of(context).pop('/four');
          },
          child: Text('PAGE 1')),
    );
  }
}
