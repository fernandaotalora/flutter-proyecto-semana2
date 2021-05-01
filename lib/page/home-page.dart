import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc/page/resultado.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double estatura = 166;
  int labelEstatura = 166;
  int peso = 62;
  int edad = 38;
  String sexo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Expanded(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                                image: AssetImage('assets/male.png'),
                                width: 50,
                                height: 50),
                            Text('Hombre',
                                style: TextStyle(color: Colors.white70))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                                image: AssetImage('assets/female.png'),
                                width: 50,
                                height: 50),
                            Text('Mujer',
                                style: TextStyle(color: Colors.white70))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 150,
                width: 330,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Title(color: Colors.white, child: Text("Estatura")),
                        Text.rich(
                          TextSpan(
                            text: '', // default text style
                            children: <TextSpan>[
                              TextSpan(
                                  text: labelEstatura.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35)),
                              TextSpan(
                                  text: 'cm',
                                  style:
                                      TextStyle(fontStyle: FontStyle.normal)),
                            ],
                          ),
                        ),
                        Slider(
                          activeColor: Colors.white,
                          inactiveColor: Colors.white70,
                          value: estatura,
                          min: 0,
                          max: 300,
                          label: "$labelEstatura",
                          onChanged: (valor) {
                            setState(() {
                              estatura = valor;
                              labelEstatura = valor.round();
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
        Expanded(
            child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 160,
                width: 150,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Peso',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: '', // default text style
                          children: <TextSpan>[
                            TextSpan(
                                text: peso.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 35)),
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: _pesoBajar,
                              child: Center(
                                  child: Icon(
                                Icons.remove_circle_sharp,
                                color: Colors.grey,
                                size: 50,
                              )),
                            ),
                            TextButton(
                              onPressed: _pesoSubir,
                              child: Icon(
                                Icons.add_circle_sharp,
                                color: Colors.grey,
                                size: 50,
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              Container(
                height: 160,
                width: 150,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Edad',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: '', // default text style
                          children: <TextSpan>[
                            TextSpan(
                                text: edad.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 35)),
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: _edadBajar,
                              child: Center(
                                  child: Icon(
                                Icons.remove_circle_sharp,
                                color: Colors.grey,
                                size: 50,
                              )),
                            ),
                            TextButton(
                              onPressed: _edadSubir,
                              child: Icon(
                                Icons.add_circle,
                                color: Colors.grey,
                                size: 50,
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
        Container(
          color: Colors.pink,
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultadosPage(
                              peso: peso, estatura: estatura, sexo: '')));
                },
                child: Text(
                  'Calcular',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  void _pesoSubir() {
    setState(() {
      peso++;
    });
  }

  void _pesoBajar() {
    setState(() {
      peso--;
    });
  }

  void _edadSubir() {
    setState(() {
      edad++;
    });
  }

  void _edadBajar() {
    setState(() {
      edad--;
    });
  }
}
