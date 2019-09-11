import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle( fontSize: 18.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle( fontSize: 15.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearButones(),
          _crearTexto()
        ],
      ),
    );
  }

  Widget _crearImagen() => Image( image: NetworkImage('https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2019/02/Landscapes-04-jeremy-flint.jpg?resize=768%2C512&ssl=1'));

  Widget _crearTitulo() {

      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text('Lago con un puento', style: estiloTitulo),
                  SizedBox(height: 7.0,),
                  Text('Una lago en Alemania',  style: estiloSubtitulo),

                ],
              ),
            ),

            Icon(Icons.star, color: Colors.red, size: 30.0),

            Text('41', style: TextStyle(fontSize: 20.0),),


          ],
        ),
      );

  }

  Widget _crearButones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buton( Icons.call, 'CALL'),
        _buton( Icons.near_me, 'ROUTE'),
        _buton( Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _buton(IconData icon, String text){

    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40.0,),
        SizedBox( height: 5.0),
        Text( text, style: TextStyle(fontSize: 15.0, color: Colors.blue), )
      ],
    );

  }

  Widget _crearTexto() {

    return Container(
      padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Eiusmod ullamco enim fugiat in amet. Minim esse ut est est mollit Lorem id laborum. Excepteur laborum mollit ad sunt tempor id labore aliquip. Reprehenderit qui officia ea sint officia reprehenderit.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}