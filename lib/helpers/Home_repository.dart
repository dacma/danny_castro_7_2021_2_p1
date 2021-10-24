
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rickmorty_app/helpers/constans.dart';
import 'package:rickmorty_app/models/response.dart';

class HomeRepository {



  Future <http.Response> getCharacters() async {


    var url = Uri.parse('${Constans.apiUrl}/character');
    var response = await http.get(
      url,
      headers: {
      'content-type' : 'application/json',
      'accept' : 'application/json',
      },
    );
    return response;
  }
  }
final homeRepository = HomeRepository();
