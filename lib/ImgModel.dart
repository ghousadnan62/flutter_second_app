import 'package:flutter/material.dart';



class ImgModel extends StatelessWidget {
  int id;
  String url;
  String title;


  ImgModel(this.id, this.url, this.title);

  ImgModel.fromJson(parsedJson){
    id = parsedJson['id'];
    url= parsedJson['url'];
    title = parsedJson['title'];
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
