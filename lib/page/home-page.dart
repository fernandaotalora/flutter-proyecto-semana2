import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        Image(
                            image: AssetImage('assets/male.png'),
                            width: 50,
                            height: 50),
                        Text('Hombre', style: TextStyle(color: Colors.white70))
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
                height: 170,
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
                      ListTile(
                        title: Text(
                          "62",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              onPressed: () {},
                              child: Center(
                                  child: Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                                size: 30,
                              )),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              onPressed: () {},
                              child: Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              Container(
                height: 170,
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
                      ListTile(
                        title: Text(
                          "62",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              onPressed: () {},
                              child: Center(
                                  child: Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                                size: 30,
                              )),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              onPressed: () {},
                              child: Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                                size: 30,
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
            children: [],
          ),
        ),
        /*  Expanded(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
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
                        Text('Hombre', style: TextStyle(color: Colors.white70))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
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
                        Text('Mujer', style: TextStyle(color: Colors.white70))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
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
                        Text('Hombre', style: TextStyle(color: Colors.white70))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
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
                      ListTile(
                        title: Text(
                          "62",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              onPressed: () {},
                              child: Center(
                                  child: Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                                size: 30,
                              )),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              onPressed: () {},
                              child: Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              Container(
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
                      ListTile(
                        title: Text(
                          "62",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              onPressed: () {},
                              child: Center(
                                  child: Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                                size: 30,
                              )),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              onPressed: () {},
                              child: Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.pink,
          height: 80,
          child: Row(
            children: [],
          ),
        ),*/
      ],
    );
  }
}
