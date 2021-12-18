import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:async';
import '../models/image_model.dart';

List<ImageModel> imgmo = [];

void click_me(counter) async {
  final img = await get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos/${counter}'));
  dynamic dec = jsonDecode(img.body);

  ImageModel imgm = ImageModel(dec);
  imgmo.add(imgm);
}

class ImagePrint extends StatelessWidget {
  const ImagePrint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: imgmo
          .map((e) => Container(
                margin: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Image.network(e.url),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Text('${e.title}'),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
