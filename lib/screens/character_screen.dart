
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

//import 'package:rickmorty_app/helpers/constans.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({ Key? key }) : super(key: key);

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              _showLogo(),
              _showButton(),
            ],
        ),

      ),

    );
  }




  Widget _showLogo() {
    return Image(
    image: AssetImage('assets/rick_morty.png'),
    width: 200,
    );
  }

  Widget _showButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
         ElevatedButton(
           child: Text('Mostrar personajes'),
           onPressed: (){}, 
           
           ), 
      ],

    );

  }
















}