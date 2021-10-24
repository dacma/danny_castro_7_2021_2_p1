
import 'dart:convert';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:connectivity/connectivity.dart';
import 'package:rickmorty_app/helpers/Home_repository.dart';
import 'package:rickmorty_app/models/results.dart';

class HomeController {



  
  
 getCharacters() async {
final response = await homeRepository.getCharacters();





if (response.statusCode == 200){
  final dynamic request = jsonDecode(response.body);
  return buildResult(request);
  }else{
    return [];

  }
}
List<Results> buildResult(dynamic data){
List<Results> results = [];

final bool validateData = data != null || data.isNotEmpty;

if (validateData){
  for (var item in data) {
  results.add(Results(
    name: item["name"],
  image: item["image"],
  ));
}

  
}
return results;

}
} 
final homeController = HomeController();