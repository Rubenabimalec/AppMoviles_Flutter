import 'package:flutter/material.dart';

class InputPersonalizado extends StatelessWidget {
  final String
      labelText; // final para indicar que es una variable que sera usada como constructor
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;

  final TextInputType keyboardType;

  const InputPersonalizado({
    // agregamos al contructor
    required this.labelText,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    this.keyboardType = TextInputType.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
          icon: Icon(icon3),
          iconColor: Colors.deepOrange,
          hintText: "nombre",
          // label: Text("nombreeee"),
          labelText: labelText,
          helper: Text("llena los datos correctamente"),
          prefixIcon: Icon(icon1),
          suffixIcon: Icon(icon2)),
    );
  }
}
