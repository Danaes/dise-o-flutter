import 'dart:math';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.5),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)  
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 320.0,
        width: 320.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          color: Colors.pink,
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned (
          top: -90,
          child: cajaRosa
        )
      ],
    );

  }

  Widget _titulos() {

    final title = TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold );
    final subtitle = TextStyle( color: Colors.white, fontSize: 18.0);

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: title),
            SizedBox( height: 10.0,),
            Text('Classify this transaction into a particular category', style: subtitle)
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar( BuildContext context  ) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(52, 54, 101, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) )
        )
      ),
      child: BottomNavigationBar(
        fixedColor: Colors.pink,
        items: [
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon( Icons.calendar_today, size: 30.0 ),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon( Icons.bubble_chart, size: 30.0 ),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon( Icons.supervised_user_circle, size: 30.0 ),
          ),
        ],
      ),
    );
  }
}