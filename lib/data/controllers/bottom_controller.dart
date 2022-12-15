import 'package:get/get.dart';

class BottomNavbarController extends GetxController{

  var pageIndex=0.obs;

  selectedIndex(int index){
    pageIndex.value=index;
    update();
  }
}