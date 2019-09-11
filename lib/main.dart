import 'package:diseno/src/pages/basico_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseño',
      initialRoute: 'basico',
      routes: {
        'basico' : (BuildContext context) => BasicoPage()
      },
    );
  }
}