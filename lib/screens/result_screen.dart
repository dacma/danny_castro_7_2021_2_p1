import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:rickmorty_app/helpers/constans.dart';
import 'package:rickmorty_app/models/results.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({ Key? key }) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<Results> _results = [];


@override
void initState(){
super.initState();
_getResults();

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'), 
      
      ),
      body: Center(
        child: Text('Resultado'),
      ),
    );
  }



   void _getResults() async {
    var url = Uri.parse('${Constans.apiUrl}/api/character');
    var response = await http.get(
      url,
      headers: {
      'content-type' : 'application/json',
      'accept' : 'application/json',
      },
    );
 var body = response.body;
    var decodedJson = jsonDecode(body);
    if(decodedJson != null){
      for (var item in decodedJson){
        _results.add(Results.fromJson(item));
      }
      
    }
    print(_results);
  }


  
}