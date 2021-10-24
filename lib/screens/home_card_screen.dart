import 'package:flutter/material.dart';
import 'package:rickmorty_app/models/results.dart';

class HomeCardScreen extends StatelessWidget {
  final Results results;
  const HomeCardScreen({ Key? key, required this.results }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 120,
      decoration: BoxDecoration(
     // color: Colors.blue, 
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey.withOpacity(1)),
      ),
      child: Row(
          children: [
            ClipRRect(            
              child: Image.network(results.image),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: buildingResultInformation(),
            ),
          ],
      ),  
    );
  }

  Widget buildingResultInformation(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          results.name ?? "", 
        style: TextStyle(fontSize: 20),)
      ],
    );  
  }
}