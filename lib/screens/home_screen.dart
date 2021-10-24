import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rick y Morty'),
      ),
      body: _getBody(),
      drawer: _getCharacters(),
      
    );
  }

  _getBody() {
    return Image(
    image: AssetImage('assets/rick_morty.png'),
    width: 200,
    );
    
  }

  _getCharacters() {}
}