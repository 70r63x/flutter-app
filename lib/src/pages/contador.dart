import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState() => _ContadorState();
}

class _ContadorState extends State<ContadorPage> {
  
  final _theme = new TextStyle(fontSize: 25);
  int _cont = 0;

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
            Text('Hola mundo', style: _theme),
            Text('$_cont', style: _theme)
          ],
          )
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          onPressed: () {
            print("activado");
            setState(() {
              _cont = 0;  
            });
          },
          child: Icon( Icons.exposure_zero ),
        ),
        Expanded(child: SizedBox(width: 5.0)),
        FloatingActionButton(
          onPressed: () {
            print("activado");
            setState(() => _cont = _cont + 1 );
          },
          child: Icon( Icons.add ),
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          onPressed: () {
            print("activado");
            setState(() => _cont = _cont - 1 ); 
          },
          child: Icon( Icons.remove ),
        ),
        SizedBox(width: 30)
      ],
    );
  }

}