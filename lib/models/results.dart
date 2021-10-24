import 'package:rickmorty_app/models/origin.dart';

class Results {
  String name = '';
  String image = '';


  Results({

     required this.name,
     required this.image,

      
  });

  Results.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}