import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  final theme = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hola mundo', style: theme),
            Text('Hola mundo 2', style: theme),
          ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("activado");
        },
        child: Icon( Icons.add ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}