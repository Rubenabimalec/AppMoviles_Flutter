import 'package:flutter/material.dart';

import '../widgets/input_personalizado.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //diferentes formas cr crear listas
  List<String> bestias = [
    'buey',
    'caballo',
    'burro',
    'cabra',
    'TORO',
  ];
  List<dynamic> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    Text('hola2'),
    Text('hola2')
  ]; //dynamic funciona como any para hacer listas mixtas
  List<Widget> wigets = [Text('hola2'), Text('hola2'), Text('hola2')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          //construye una lista
          itemCount: bestias.length, //define el tamaño de lista dependiendo
          itemBuilder: (context, index) {
            //define como se va a crear cada elemento de la lista
            //context
            return ListTile(
              //mejorar la lista de con colores
              style: Colors.amber,
              title: Text(
                bestias[index],
              ),
            );
          }),
    );
  }
}
