
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:rickmorty_app/helpers/constans.dart';

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
          children: <Widget>[
              _showButtons(),
          ],
        )
      ),
    );
  }

  Widget _showButtons() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

      children:<Widget> [
        Expanded(
        child: ElevatedButton(
          child: Text('Personajes'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                return Color(0xFF120E43);
              }
            ),
          ),
          onPressed: () => _charterInformation(), 
        ),
      ),
      ],
    ),
    );
  }

  void _charterInformation() async {
  var url = Uri.parse('${Constans.apiUrl}/api/character');


  }
















}