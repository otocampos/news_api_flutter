
import 'dart:convert';

import 'package:flutter_projects/model/result.dart';
import 'package:flutter_projects/model/source.dart';
import 'package:flutter_projects/providers/news_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class SourceController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    super.onInit();
    Provider().getSources().then((value) async{

      var sources = Result.fromJson(value);

      change(sources, status: RxStatus.success());
    },onError: (error){
      change(null,status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}

