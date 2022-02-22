

import 'package:get/get.dart';

class viewController extends GetxController {
  var selectedIndex = 0;


  changeTabIndex(int index)=>{
    selectedIndex = index,
    update()
  };

}