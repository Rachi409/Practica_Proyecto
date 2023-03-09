import 'package:flutter/material.dart';

class perfilbicho_page extends StatelessWidget {
  // int currentPage = 0;
  // final PageController pageController = new PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: Navigator.of(context).pop,
              icon: Icon(Icons.key_rounded)),
          backgroundColor: Colors.red,
          title: Text('Hola Papu'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 300,
                padding: EdgeInsets.only(bottom: 15),
                //width: 1500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/d/d4/Edificios_en_Equipetrol%2C_Santa_Cruz_de_la_Sierra%2C_Bolivia.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://e.rpp-noticias.io/normal/2020/11/21/500050_1025639.jpg'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                      ),
                      Text(
                        '@ElBichoSiu',
                        style: TextStyle(color: Colors.white, inherit: true),
                      ),
                    ]),
              ),
              Container(
                height: 100,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Siguiendo',
                          style: TextStyle(
                            fontSize: 40,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '77',
                          style: TextStyle(
                            fontSize: 40,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Seguidores',
                          style: TextStyle(
                            fontSize: 35,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '500 M',
                          style: TextStyle(
                            fontSize: 35,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text(
                        ' animales, pero no con insectosEl astro portugués se ganó el curioso sobrenombre cuando jugaba para el Real Madrid. El delantero portugués Cristiano Ronaldo es conocido por sus imponentes saltos, sus excelentes instintos en el área y sus poderosos disparos, características que uno asociaría con la fuerza de muchos animales, pero no con insectosEl astro portugués se ganó el curioso sobrenombre cuando jugaba para el Real Madrid. El delantero portugués Cristiano Ronaldo es conocido por sus imponentes saltos, sus excelentes instintos en el área y sus poderosos disparos, características que uno asociaría con la fuerza de muchos animales, pero no con insectosEl astro portugués se ganó el curioso sobrenombre cuando jugaba para el Real Madrid. El delantero portugués Cristiano Ronaldo es conocido por sus imponentes saltos, sus excelentes instintos en el área y sus poderosos disparos, características que uno asociaría con la fuerza de muchos animales, pero no con insectosEl astro portugués se ganó el curioso sobrenombre cuando jugaba para el Real Madrid. El delantero portugués Cristiano Ronaldo es conocido por sus imponentes saltos, sus excelentes instintos en el área y sus poderosos disparos, características que uno asociaría con la fuerza de muchos animales, pero no con insectos.')
                  ],
                ),
              ),
              Container(
                height: 230,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: FloatingActionButton(
                        child: Text('Go Page 1'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/one');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          //      currentIndex: currentPage,
          //      onTap: (index){
          //        currentPage=index;
          //        pageController.animateToPage(index, duration: Duration(seconds: 2), curve: Curves.bounceOut);
          //      },

          backgroundColor: Colors.red,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.r_mobiledata_sharp), label: 'Richard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), label: 'Alarm'),
            BottomNavigationBarItem(icon: Icon(Icons.cable), label: 'Cronom'),
          ],
        ),
      ),
    );
  }
}

class Boton2to1 extends StatelessWidget {
  const Boton2to1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Text('Go Page 1'),
      onPressed: () {
        Navigator.of(context).pushNamed('/three');
      },
    );
  }
}
