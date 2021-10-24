import 'package:flutter/material.dart';
import 'package:rickmorty_app/screens/origins_screen.dart';


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

  Widget _getBody() {
      return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image(
                image: AssetImage('assets/rick_morty.png'),
                  width: 200,
              ),
            ],
        ),
      ),
    );
  }

  Widget _getCharacters() {

        return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image(
              image: AssetImage('assets/rick_morty.png'),
            )
          ),
          ListTile(
            leading: Icon(Icons.trip_origin),
            title: const Text('Origenes'),
            onTap: () { 
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => OriginScreen()
                )
              );
            },
          ),
        ],
      )
        );
}



}