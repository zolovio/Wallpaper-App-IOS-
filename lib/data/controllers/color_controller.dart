import 'package:get/get.dart';
import 'package:wallpaper_app/data/models/color_model.dart';
import 'package:wallpaper_app/data/respository/color_repository.dart';
class ColorController extends GetxController with StateMixin<ColorsModel> {
  ColorRepository repo= ColorRepository();
  var type="".obs;
  @override
  void onInit() {
    super.onInit();
    getColorsList();

  }

  @override
  void onClose() {
    super.onClose();
  }

  updateType(String val){
    type.value=val;
    update();
  }
 getColorsList() async {
   ColorsModel model=ColorsModel();
   model= await repo.getColorList();
   change(model, status: RxStatus.success());
}
}