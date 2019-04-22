import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import './ImgModel.dart';
import './ImgList.dart';


class ImgManager extends StatefulWidget {
  @override
  _ImgManagerState createState() => _ImgManagerState();
}

class _ImgManagerState extends State<ImgManager> {
  int counter = 0;
  List<ImgModel> images = [];

  fetchImgs() async{
    counter++;



    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imgModel = ImgModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imgModel);
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stephen Tutorial App'),
      ),
      body: ImgList(images),

      floatingActionButton: FloatingActionButton(
        onPressed: fetchImgs,
        child: Icon(Icons.add),
      ),
    );
  }
}
