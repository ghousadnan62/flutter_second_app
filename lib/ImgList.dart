import 'package:flutter/material.dart';
import './ImgModel.dart';


class ImgList extends StatelessWidget {
  final List<ImgModel> images;


  ImgList(this.images);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, int index){
          return Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                border: Border.all(width: 5)
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Image.network(images[index].url),
                  SizedBox(height: 10,),
                  Text(
                    images[index].title,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: images.length,
      
    );
  }
}
