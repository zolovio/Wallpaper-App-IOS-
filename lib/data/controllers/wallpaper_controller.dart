import 'package:wallpaper_app/data/models/wallpaper_model.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/data/respository/wallpaper_repository.dart';
class WallpaperController extends GetxController with StateMixin<WallpaperModel> {
  WallpaperRepository repo= WallpaperRepository();
  @override
  void onInit() {
    super.onInit();
    getWallpaperList();

  }

  @override
  void onClose() {
    super.onClose();
  }


  getWallpaperList() async {
    WallpaperModel model=WallpaperModel();
    model= await repo.getWallpaperList();
    change(model, status: RxStatus.success());
  }
}