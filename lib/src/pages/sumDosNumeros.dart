import 'package:flutter/material.dart';

class SumaDosNumeros extends StatefulWidget {
  SumaDosNumeros({Key? key}) : super(key: key);

  @override
  _SumaDosNumerosState createState() => _SumaDosNumerosState();
}

class _SumaDosNumerosState extends State<SumaDosNumeros> {
  String _nombre = "";
  int _numerouno = 0;
  int numerodos = 0;
  int suma = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suma de dos numeros"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          _crearInput(),
          Divider(),
          _crearInput2(),
          Divider(),
          _resultado(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
        autofocus: true,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Numero 2',
          labelText: 'Numero 1',
          suffixIcon: Icon(Icons.accessibility_new_outlined),
        ),
        onChanged: (valor) {
          _numerouno = int.parse(valor);
          setState(() {
            suma = _numerouno + numerodos;
            print(suma);
          });
        });
  }

  Widget _crearInput2() {
    return TextField(
        autofocus: true,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Nombre',
          labelText: 'Numero 2',
          suffixIcon: Icon(Icons.accessibility_new_outlined),
        ),
        onChanged: (valor) {
          numerodos = int.parse(valor);
          setState(() {
            suma = _numerouno + numerodos;
            print(suma);
          });
        });
  }

  _resultado() {
    return ListTile(
        title: Text(
      'La suma de los numero son: $suma',
      style: TextStyle(color: Colors.red, fontSize: 30),
    ));
  }
}
