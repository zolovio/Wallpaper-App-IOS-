import 'package:wallpaper_app/data/models/notches_model.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/data/respository/notches_repository.dart';
class NotchesController extends GetxController with StateMixin<NotchesModel> {
  NotchesRepository repo= NotchesRepository();

  var selectedNotch="".obs;
  @override
  void onInit() {
    super.onInit();
    getNotchesList();

  }

  @override
  void onClose() {
    super.onClose();
  }


  setNotch(String notchUrl){
    selectedNotch.value=notchUrl;
    update();
  }


  getNotchesList() async {
    NotchesModel model=NotchesModel();
    model= await repo.getNotchesList();
    change(model, status: RxStatus.success());
  }
}