import 'package:rickmorty_app/models/info.dart';
import 'package:rickmorty_app/models/results.dart';

class BasicData {
  Info info = Info(count: 0, pages: 0);


  BasicData({required this.info});

  BasicData.fromJson(Map<String, dynamic> json) {
    info =  Info.fromJson(json['info']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}