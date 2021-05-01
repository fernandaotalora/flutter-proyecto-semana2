import 'package:flutter/material.dart';

class ResultadosPage extends StatelessWidget {
  final peso;
  final estatura;
  final sexo;

  String resultado = '';
  String valor = '';
  String mensaje = '';

  ResultadosPage(
      {@required this.peso, @required this.estatura, @required this.sexo});

  @override
  Widget build(BuildContext context) {
    _calcularIM();
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
        Container(
          height: 70,
          width: 300,
          child: Text(
            "Resultado",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: Container(
          width: 350,
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 150,
                  child: Text(
                    resultado,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 150,
                  child: Text(
                    valor,
                    style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 100,
                  child: Text(
                    mensaje,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
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
                onPressed: _calcularIM,
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

  void _calcularIM() {
    double imc = peso / (estatura / 100);
    valor = imc.toStringAsFixed(1);
    if (imc < 18.5) {
      resultado = 'BAJO PESO';
      mensaje = "Tiene bajo peso, revisa tus habitos";
    } else if (imc > 18.5 || imc < 24.9) {
      resultado = 'NORMAL';
      mensaje = "Tienes buen peso, !Buen trabajo !";
    } else if (imc > 25.0 || imc < 29.9) {
      resultado = 'SOBREPESO';
      mensaje =
          "Tiene sobre peso, revisa tus habitos alimenticios y realiza ejercicio";
    } else if (imc > 30.0 || imc < 30.45) {
      resultado = 'OBESIDAD GRADO I';
      mensaje =
          "Tiene obesidad, revisa tus habitos alimenticios y realiza ejercicio";
    } else if (imc > 35.0 || imc < 39.9) {
      resultado = 'OBESIDAD GRADO II';
      mensaje =
          "Tiene obesidad, revisa tus habitos alimenticios y realiza ejercicio";
    } else if (imc > 40.0) {
      resultado = 'OBESIDAD GRADO III';
      mensaje = "Tiene obesidad, visita tu medico";
    }
  }
}
