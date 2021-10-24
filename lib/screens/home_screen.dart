import 'package:flutter/material.dart';
import 'package:rickmorty_app/models/results.dart';
import 'package:rickmorty_app/screens/home_card_screen.dart';
import 'package:rickmorty_app/widgets/home_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rick y Morty App"
          ), 
          actions: [
        HomeButton(
          icon: Icon(
            Icons.notifications
            ),
        ),
        HomeButton(
          icon: Icon(
            Icons.exit_to_app
            ),
        )
      ]),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(15),
        child: HomeCardScreen(
          results: Results
          (name: 'Rick Sanchez',  
          image: 'https://rickandmortyapi.com/api/character/avatar/1.jpeg') ,
        ),
      ),
      ),
    );
  }
}
