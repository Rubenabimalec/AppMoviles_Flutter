/*import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My app"),
          leading: Icon(
            Icons.home,
            color: Colors.cyanAccent,
            size: 50,
            weight: 80,
          ),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Container(
          //container root
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 69, 153, 69),
          child: SingleChildScrollView(
            child: Column(
              //hijo column del contenedor raiz, column raiz
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'welcome!!!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.blue,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.deepOrange,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.lightGreen,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 10),
                          width: 200,
                          height: 300,
                          color: Colors.amberAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        //key:value -->propiedad:valor
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Cartelera de Cine"),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          //vita que los elementos se sobrepongan en áreas restringidas del dispositivo.
          child: SingleChildScrollView(
            // Permite desplazarse verticalmente
            child: Column(
              //lista de peliculas
              //raiz padre
              crossAxisAlignment:
                  CrossAxisAlignment.center, //alineando children
              children: [
                titulo("Mejores 10 esta semana"),
                listaPeliculas(),
                titulo("Tus Favoritos "),
                listaPeliculas(),
                titulo("Recomendadas"),
                listaPeliculas(),
                titulo("proximos estrenos"),
                listaPeliculas(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget titulo(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget listaPeliculas() {
    //método crea un listado horizontal de tarjetas de películas
    return SizedBox(
      height:
          300, //tamaño vertical de las listas de peliculas, se desborda con menos
      child: ListView(
        scrollDirection: Axis.horizontal, //dezplazamiento horizontal
        children:
            List.generate(6, (index) => cartaXpelicula()), //genera 6 tarjetas
      ),
    );
  }

  Widget cartaXpelicula() {
    return Container(
      //raiz padre
      margin: const EdgeInsets.symmetric(
          horizontal: 15), //const considera inmutable.
      width: 200,
      decoration: BoxDecoration(
        //nodo_nivel_2 de la decoracion del contenedor
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 6,
            blurRadius: 5,
            offset: Offset(10, 0),
          ),
        ],
      ),
      child: Column(
        //nodo_nivel 2
        children: [
          Container(
            //nodo_nivel_3
            height: 220,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/30482791/pexels-photo-30482791/free-photo-of-elegante-garza-tricolor-vadeando-en-aguas-tranquilas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            //const para evitar recalcular widgets innecesariamente. Si un widget no cambia, Flutter lo mantiene en memoria en lugar de reconstruirlo.
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "La garza",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "⭐ 7.5",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//Se usa const para optimizar rendimiento y evitar reconstrucciones innecesarias en Flutter.
//Es una buena práctica usar const siempre que los valores sean estáticos y no cambien.
