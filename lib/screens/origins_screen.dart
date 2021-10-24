import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'package:rickmorty_app/helpers/constans.dart';
import 'package:rickmorty_app/models/origin.dart';

class OriginScreen extends StatefulWidget {
  const OriginScreen({ Key? key }) : super(key: key);

  @override
  _OriginScreenState createState() => _OriginScreenState();
}

class _OriginScreenState extends State<OriginScreen> {
List<Origin> _origin = [];

@override
void initState(){
super.initState();
_getOrigin();

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Originen'), 
      
      ),
      body: Center(
        child: Text('Originen'),
      ),
    );
  }



  void _getOrigin() async {
    var url = Uri.parse('${Constans.apiUrl}/api/character');
    var response = await http.get(
      url,
      headers: {
      'content-type' : 'application/json',
      'accept' : 'application/json',
      },
    );
    print(response.body);
  }


}