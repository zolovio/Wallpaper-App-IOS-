import 'package:wallpaper_app/data/models/color_model.dart';
import 'package:wallpaper_app/data/models/wallpaper_model.dart';
import 'package:wallpaper_app/data/services/color_service.dart';
import 'package:wallpaper_app/data/services/wallpaper_service.dart';

class WallpaperRepository{
  WallpaperService service=WallpaperService();
   Future<WallpaperModel> getWallpaperList() async {
     WallpaperModel model=WallpaperModel();
     model= await service.getWallpaperList();
     return model;
   }
}