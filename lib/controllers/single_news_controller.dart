import 'package:flutter_projects/model/articles.dart';
import 'package:get/get.dart';

class singleNewsController extends GetxController{
  late Articles news  ;
  late List<Articles> carroussel ;


  changeNews({Articles? article,List<Articles>? carroussel})=>{
    this.news = article! ,
    this.carroussel = carroussel!,
    update()
  };

}