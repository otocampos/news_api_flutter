import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_projects/model/articles.dart';
import 'package:flutter_projects/model/categoria.dart';
import 'package:flutter_projects/model/result.dart';
import 'package:flutter_projects/model/source.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;

class Provider extends GetConnect {
  String? country;

  Provider({this.country});

  Future<dynamic>getTopHeadlines([categoria]) async {
String? url;
if(categoria is Categoria){
   url = "https://newsapi.org/v2/top-headlines?country=us&category=${categoria!.slug}&apiKey=9f1c23c070554d07a7ca33ee02890591";
}

if (categoria is Source){
   url = "https://newsapi.org/v2/top-headlines?sources=${categoria!.id}&apiKey=9f1c23c070554d07a7ca33ee02890591";
}
    final response = await get(url!);
    if (response.status.hasError) {

      return Future.error(response.statusText!);
    } else {
print(response);
      return response.body;
    }
  }

  Future<dynamic>getSources() async {


    final response = await get(
        "https://newsapi.org/v2/top-headlines/sources?country=br&apiKey=9f1c23c070554d07a7ca33ee02890591");
    print(ui.window.locales,);

    if (response.status.hasError) {

      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }

}