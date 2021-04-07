import 'package:flutter/material.dart';

// import 'package:flutter_vs_code/src/pages/home_page.dart';
import 'package:flutter_vs_code/src/pages/contador.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build( context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage()
        child: ContadorPage(),
      )
    );
  }

}